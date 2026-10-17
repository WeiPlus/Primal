# ============================================================
#  Primal - 降频循环（每 10 刻）
#  口渴衰减、体温采样、环境判定都放这里
# ============================================================

# ---- 全局：天气检测（10刻1次） ----
scoreboard players set #weather primal.sys 0
execute if data storage minecraft:weather data.raining run scoreboard players set #weather primal.sys 1
execute if data storage minecraft:weather data.thundering run scoreboard players set #weather primal.sys 2

# ---- 全局：昼夜检测 ----
scoreboard players set #is_night primal.sys 0
execute store result score #daytime primal.sys run time query daytime
execute if score #daytime primal.sys matches 13000..23000 run scoreboard players set #is_night primal.sys 1

# ---- 玩家级：降频逻辑 ----
execute as @a[tag=primal.active,gamemode=!creative,gamemode=!spectator] run function primal:player_slow_tick

# ---- 计数器归零 ----
scoreboard players set #tick primal.sys 0