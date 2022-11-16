## init_end_watcher_replaceable.mcfunction # Version 1 # Created by Galdeveer. ##
# Roll to unspawn existing mob and replace with end watcher 
# Depricated
execute as @s[tag=!global.ignore.pos, tag=!veer.fsh.end_watcher, predicate=veer:fsh/end_watcher/replace_chance] run function veer:fsh/end_watcher/replace