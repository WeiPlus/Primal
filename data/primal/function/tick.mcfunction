# ============================================================
#  Primal - 主循环（每刻）
#  原则：
#   1. 每刻只做 O(玩家数) 的轻量工作，绝不遍历 @e
#   2. 数值衰减、环境采样等重逻辑全部下沉到 slow_tick
#   3. 所有选择器都带 tag / gamemode 过滤
# ============================================================

# 1. 新玩家 / 重生玩家补标签（单次选择器扫描，代价极低）
function primal:hud/tick
function primal:player_tick
function primal:water/tick
function primal:temperature/tick
function primal:player_slow_tick
function primal:slow_tick
function primal:util/clamp_thirst


execute as @a unless entity @s[tag=primal.active] run function primal:player_init

# 2. 每刻轻量逻辑（排除创造/旁观，避免调试时干扰）
execute as @a[tag=primal.active,gamemode=!creative,gamemode=!spectator] run function primal:player_tick

# 3. 降频计数器
scoreboard players add #tick primal.sys 1
execute if score #tick primal.sys >= #slow_interval primal.cfg run function primal:slow_tick