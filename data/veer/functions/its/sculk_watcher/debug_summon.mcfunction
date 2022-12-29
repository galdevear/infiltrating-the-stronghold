function veer:its/sculk_watcher/summon
execute as @e[type=bat,limit=1,sort=nearest,tag=veer.its.sculk_watcher] run data modify entity @s NoAI set value 1b