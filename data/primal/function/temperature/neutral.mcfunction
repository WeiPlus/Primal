# ============================================================
#  舒适区：清掉体温相关的负面效果，计时器归零
# ============================================================
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
scoreboard players set @s primal.cold_timer 0
scoreboard players set @s primal.heat_timer 0