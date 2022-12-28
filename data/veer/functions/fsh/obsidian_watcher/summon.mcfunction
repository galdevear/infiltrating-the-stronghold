##
 # summon_ender_watcher.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.fsh.obsidian_watcher.new Will not properly refactor since its used in the summon command.
#declare tag veer.fsh.obsidian_watcher Used in advancements

# Empty Lootable used for compatibility.

# Summon end watcher
# end particles occur on death due to the enderpearl.
summon vex ~ ~ ~ {Tags:["veer.fsh.obsidian_watcher.new", "veer.fsh.obsidian_watcher","veer.fsh.entity","veer.fsh.fix_glowing.vehicle"],Silent:1b, DeathLootTable:"veer:fsh/obsidian_watcher", Passengers:[{Tags:["veer.fsh.obsidian_watcher","veer.fsh.entity","global.ignore","veer.fsh.fix_glowing.passenger"],id:"minecraft:ender_pearl",Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;140513258,-229093546,-1198526107,456790588],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJhOTY0N2VjN2M4ZjM1OWQ4ZDA5NTJiZGJmNzJjYmI0YjU3NDNjZjg0NTVkY2I3NjY0ZTJiZjliZGY4YjcxOCJ9fX0="}]}}}}}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.00},{Name:"generic.max_health",Base:7.00}]}