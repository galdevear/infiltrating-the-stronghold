function veer:its/sculk_watcher/summon-1

execute if predicate veer:its/rng/50 run tag @s add veer.its.watcher_pair.replace.true
execute if entity @s[tag=veer.its.watcher_pair.replace.true] run function veer:its/end_watcher/summon
execute if entity @s[tag=!veer.its.watcher_pair.replace.true] run function veer:its/obsidian_watcher/summon
tag @s remove veer.its.watcher_pair.replace.true

execute as @e[type=#veer:its/watchers,limit=2,distance=..1] unless entity @s[tag=!veer.its.end_watcher, tag=!veer.its.obsidian_watcher, tag=!veer.its.sculk_watcher] run data modify entity @s PersistenceRequired set value 1b