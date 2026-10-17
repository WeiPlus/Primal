# ============================================================
#  体温趋近环境温度（每 10 刻跑一次）
#  规则：
#   - primal.temp 范围 -20 ~ 20（对应 -2.0 ~ 2.0，放大 10 倍存整数）
#   - 每 10 刻向 env*10 靠拢 2 点（即每刻 0.2 档，约 5 秒跨 1 档）
#   - 这个惯性让跨群系边界时数值平滑，不会跳变
# ============================================================

# 1. 把 env 放大 10 倍，存进临时变量
scoreboard players operation #target primal.sys = @s primal.env
scoreboard players operation #target primal.sys *= #temp_scale primal.cfg

# 2. 求差值 diff = target - temp
scoreboard players operation #diff primal.sys = #target primal.sys
scoreboard players operation #diff primal.sys -= @s primal.temp

# 3. 符号函数：diff 正则 step=1，负则 step=-1，零则 step=0
scoreboard players operation #step primal.sys = #diff primal.sys
scoreboard players operation #step primal.sys /= #diff primal.sys
# 上面这行在 diff=0 时会除零，MC 里除零结果是 0，正好符合我们要的「不动」

# 4. 按步长趋近（步长 = 2，即每 10 刻移动 0.2 档）
scoreboard players operation @s primal.temp += #step primal.sys
scoreboard players operation @s primal.temp += #step primal.sys

# 5. 钳制到 -20..20
execute if score @s primal.temp matches ..-20 run scoreboard players set @s primal.temp -20
execute if score @s primal.temp matches 20.. run scoreboard players set @s primal.temp 20

# 6. 分档惩罚（按 temp 的档位，不是原始值）
execute if score @s primal.temp matches ..-10 run function primal:temperature/cold
execute if score @s primal.temp matches -9..9 run function primal:temperature/neutral
execute if score @s primal.temp matches 10.. run function primal:temperature/hot