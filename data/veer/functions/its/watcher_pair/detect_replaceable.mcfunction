##
 # Date: 12/20/22
 # 
 #
 # Created by Galdeveer.
##

execute if entity @s[predicate=veer:its/in_stronghold,tag=!veer.its.end_watcher, tag=!veer.its.obsidian_watcher, tag=!veer.its.sculk_watcher, predicate=veer:its/watcher_pair/replace_chance] run function veer:its/watcher_pair/replace