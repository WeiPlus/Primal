# ---- 衰减：只在未满时写分，减少无效写入 ----
execute if score @s primal.thirst < #thirst_max primal.cfg run scoreboard players remove @s primal.thirst 1

# ---- 归零保护 ----
execute if score @s primal.thirst matches ..0 run function primal:util/clamp_thirst

# ---- 脱水惩罚 ----
execute if score @s primal.thirst matches 0 run function primal:water/dehydrate