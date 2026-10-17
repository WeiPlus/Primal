# ============================================
# HUD 主循环 (每刻运行)
# ============================================

# 1. 钳制 thirst 到 0..20 范围（防止越界）
execute as @a if score @s primal.thirst matches ..0 run scoreboard players set @s primal.thirst 0
execute as @a if score @s primal.thirst matches 21.. run scoreboard players set @s primal.thirst 20

# 2. 遍历所有玩家，根据分数调用对应的 HUD 显示
execute as @a if score @s primal.thirst matches 0 run function primal:hud/thirst/0
execute as @a if score @s primal.thirst matches 1 run function primal:hud/thirst/1
execute as @a if score @s primal.thirst matches 2 run function primal:hud/thirst/2
execute as @a if score @s primal.thirst matches 3 run function primal:hud/thirst/3
execute as @a if score @s primal.thirst matches 4 run function primal:hud/thirst/4
execute as @a if score @s primal.thirst matches 5 run function primal:hud/thirst/5
execute as @a if score @s primal.thirst matches 6 run function primal:hud/thirst/6
execute as @a if score @s primal.thirst matches 7 run function primal:hud/thirst/7
execute as @a if score @s primal.thirst matches 8 run function primal:hud/thirst/8
execute as @a if score @s primal.thirst matches 9 run function primal:hud/thirst/9
execute as @a if score @s primal.thirst matches 10 run function primal:hud/thirst/10
execute as @a if score @s primal.thirst matches 11 run function primal:hud/thirst/11
execute as @a if score @s primal.thirst matches 12 run function primal:hud/thirst/12
execute as @a if score @s primal.thirst matches 13 run function primal:hud/thirst/13
execute as @a if score @s primal.thirst matches 14 run function primal:hud/thirst/14
execute as @a if score @s primal.thirst matches 15 run function primal:hud/thirst/15
execute as @a if score @s primal.thirst matches 16 run function primal:hud/thirst/16
execute as @a if score @s primal.thirst matches 17 run function primal:hud/thirst/17
execute as @a if score @s primal.thirst matches 18 run function primal:hud/thirst/18
execute as @a if score @s primal.thirst matches 19 run function primal:hud/thirst/19
execute as @a if score @s primal.thirst matches 20 run function primal:hud/thirst/20