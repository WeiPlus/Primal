# 喝水增加口渴值（drink_amount 设为 6）
scoreboard players add @s primal.thirst 6

# 上限钳制（thirst_max 设为 20）
execute if score @s primal.thirst matches 21.. run scoreboard players set @s primal.thirst 20

# 清除脱水惩罚计时
scoreboard players set @s primal.temp 0

# 撤销进度，让下次还能触发
advancement revoke @s only primal:trigger/drink_water