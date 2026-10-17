tag @s add primal.active

# 新玩家给满水，避免刚出生就脱水
scoreboard players operation @s primal.thirst = #thirst_max primal.cfg
scoreboard players set @s primal.temp 0