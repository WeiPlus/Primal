# ============================================================
#  Primal - 初始化
# ============================================================

# ---- 计分板 ----
scoreboard objectives add primal.cold_timer dummy
scoreboard objectives add primal.heat_timer dummy
scoreboard players set #temp_scale primal.cfg 10
scoreboard objectives add primal.thirst dummy
scoreboard objectives add primal.temp dummy
scoreboard objectives add primal.sys dummy
scoreboard objectives add primal.cfg dummy
scoreboard players set #alt_base primal.cfg 80
scoreboard players set #alt_step primal.cfg 40
scoreboard objectives add primal.env dummy

# ---- 全局常量（存假玩家，避免每刻读配置）----
scoreboard players set #thirst_max primal.cfg 20
scoreboard players set #thirst_decay primal.cfg 1
scoreboard players set #drink_amount primal.cfg 6
scoreboard players set #slow_interval primal.cfg 10

# ---- 计数器归零 ----
scoreboard players set #tick primal.sys 0

# ---- 已在场的玩家补标签 ----
tag @a add primal.active

tellraw @a [{"text":"[Primal] ","color":"gold"},{"text":"loaded","color":"gray"}]