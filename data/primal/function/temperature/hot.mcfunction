# ============================================================
#  酷热：虚弱 II + 每 2 秒掉 1 血（魔法伤害，可被抗性减免）
# ============================================================
effect give @s minecraft:weakness 12 1 true
execute if score @s primal.temp matches 15.. run effect give @s minecraft:slowness 12 1 true

scoreboard players add @s primal.heat_timer 1
execute if score @s primal.heat_timer matches 10.. run damage @s 1 minecraft:magic
execute if score @s primal.heat_timer matches 10.. run scoreboard players set @s primal.heat_timer 0