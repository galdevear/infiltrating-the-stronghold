##
 # summon.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.fsh.end_watcher.new Will not properly refactor since its used in the summon command.
#declare tag veer.fsh.end_watcher Used in advancements

# Summon end watcher
# Ender Particles on death due to enderpearl
summon vex ~ ~ ~ {Tags:["veer.fsh.end_watcher.new", "veer.fsh.end_watcher"],Silent:1b, DeathLootTable:"veer:fsh/empty", Passengers:[{Tags:["veer.fsh.end_watcher"],id:"minecraft:ender_pearl",Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;907160796,1821854615,-1727336627,-176309982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}]}}}}}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.00},{Name:"generic.max_health",Base:7.00}]}