##
 # schedule-a.mcfunction
 # Created by Galdeveer.
##

#> New Entity Detection
# If an entity has global.ignore removed, the initialization code can still run.
# Tag valid new entities
tag @s[tag=!veer.fsh.entity,tag=!global.ignore] add veer.fsh.entity.new
# Tag entities
tag @s[tag=!veer.fsh.entity,tag=!global.ignore] add veer.fsh.entity

# TODO: Add tag for in stronghold

#> Projectile in chiseled infested stone
execute as @s[type=#veer:fsh/in_block_projectiles,tag=!global.ignore.pos, tag=veer.fsh.entity] run function veer:fsh/schedule-a-a

#> Mob Spawning
# Swap some new spawns with a pair of watchers
execute as @s[type=#veer:fsh/watcher_pair/replaceable, tag=veer.fsh.entity.new, tag=!global.ignore.pos, predicate=veer:fsh/in_stronghold] run function veer:fsh/watcher_pair/init_replaceable
# Init Silverfish
execute as @s[type=silverfish, tag=veer.fsh.entity.new, tag=!global.ignore.pos] run function veer:fsh/silverfish/init

#> Mob Mechanics
# Player detection for sculk watcher (stealth mechanic)
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher] run function veer:fsh/sculk_watcher/detect

# attack for end watchers on entities who are in attack range (uses schedule function's interval for timing)
execute as @s[type=ender_pearl,tag=veer.fsh.end_watcher] run function veer:fsh/end_watcher/attack

#> Removing glowing from 2dproj
execute as @s[type=snowball,tag=veer.fsh.sculk_watcher] run function veer:fsh/sculk_watcher/end_glowing
execute as @s[type=ender_pearl,tag=veer.fsh.end_watcher] run function veer:fsh/end_watcher/end_glowing

#> Remove Temporary Tags
tag @s[tag=veer.fsh.entity.new] remove veer.fsh.entity.new