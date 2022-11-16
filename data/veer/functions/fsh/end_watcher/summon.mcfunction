##
 # summon_ender_watcher.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.fsh.end_watcher.new Will not properly refactor since its used in the summon command.
#declare tag veer.fsh.end_watcher Used in advancements

# Empty Lootable used for compatibility.

# TODO: Lower movement speed?

# Summon end watcher (Pretagged)
# Proven that the end particles can occur on death due to the enderpearl.
summon vex ~ ~ ~ {Tags:["veer.fsh.end_watcher.new", "veer.fsh.end_watcher"],Silent:1b, DeathLootTable:"veer:fsh/empty", Passengers:[{Tags:["veer.fsh.end_watcher"],id:"minecraft:ender_pearl",Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;140513258,-229093546,-1198526107,456790588],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJhOTY0N2VjN2M4ZjM1OWQ4ZDA5NTJiZGJmNzJjYmI0YjU3NDNjZjg0NTVkY2I3NjY0ZTJiZjliZGY4YjcxOCJ9fX0="}]}}}}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.00},{Name:"generic.max_health",Base:7.00}]}
# Bind summoned vex's (vex = base entity for custom mob) pathfinding to current position
# execute as @e[tag=veer.fsh.end_watcher.new] run function veer:fsh/util/bind_vex
# # Normally 0.7?
# # execute as @e[tag=veer.fsh.end_watcher.new] run attribute @s generic.max_health modifier add 5e55c33e-1a69-433a-9439-38e84895a789 "veer.fsh.end_watcher.movement_speed" -5 add
# # Untag summoned vex as new
# tag @e[tag=veer.fsh.end_watcher.new] remove veer.fsh.end_watcher.new