#declare score_holder $block
scoreboard players set $block veer.its.eye_of_ender 0

execute if block ~ ~ ~ crying_obsidian run scoreboard players set $block veer.its.eye_of_ender 1
execute if block ~ ~ ~ sculk_sensor run scoreboard players set $block veer.its.eye_of_ender 2

execute if score $block veer.its.eye_of_ender matches 0 run function veer:its/end_watcher/summon
execute if score $block veer.its.eye_of_ender matches 1 run function veer:its/obsidian_watcher/summon
execute if score $block veer.its.eye_of_ender matches 2 run function veer:its/sculk_watcher/summon-1

execute as @e[type=#veer:its/watchers] unless entity @s[tag=!veer.its.end_watcher, tag=!veer.its.obsidian_watcher, tag=!veer.its.sculk_watcher] run data modify entity @s PersistenceRequired set value 1b

execute if score $block veer.its.eye_of_ender matches 1..2 run setblock ~ ~ ~ air replace

kill @s