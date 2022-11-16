## init_sculk_watcher_replaceable.mcfunction # Version 1 # Created by Galdeveer. ##
# Roll to unspawn existing mob and replace with sculk watcher 
execute as @s[tag=!global.ignore.pos,tag=!veer.fsh.sculk_watcher, predicate=veer:fsh/sculk_watcher/replace_chance] run function veer:fsh/sculk_watcher/replace