##
 # Date: 12/20/22
 # 
 #
 # Created by Galdeveer.
##

execute if entity @s[predicate=veer:fsh/in_stronghold,tag=!veer.fsh.end_watcher, tag=!veer.fsh.obsidian_watcher, tag=!veer.fsh.sculk_watcher, predicate=veer:fsh/watcher_pair/replace_chance] run function veer:fsh/watcher_pair/replace