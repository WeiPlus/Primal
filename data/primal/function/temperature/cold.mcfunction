# ============================================================
#  极寒：缓慢 III + 每 2 秒掉 1 血
# ============================================================
effect give @s minecraft:slowness 12 2 true
execute if score @s primal.temp matches ..-15 run effect give @s minecraft:weakness 12 1 true

scoreboard players add @s primal.cold_timer 1
execute if score @s primal.cold_timer matches 10.. run damage @s 1 minecraft:freeze
execute if score @s primal.cold_timer matches 10.. run scoreboard players set @s primal.cold_timer 0