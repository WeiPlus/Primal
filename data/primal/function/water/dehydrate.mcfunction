# 轻度惩罚：每 10 刻给一次，持续时间略长于间隔，保证不断档
effect give @s minecraft:slowness 1 0 true
effect give @s minecraft:mining_fatigue 1 0 true

# 长期脱水才掉血（这里用 temp 当"脱水计时器"，避免每刻直接扣血）
scoreboard players add @s primal.temp 1
execute if score @s primal.temp matches 60.. run damage @s 1 minecraft:magic
execute if score @s primal.temp matches 60.. run scoreboard players set @s primal.temp 0