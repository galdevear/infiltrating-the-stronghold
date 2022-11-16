##
 # init_sculk_watcher_replaceable.mcfunction
 # Version 1
 #alias entity callerPrereq @s[tag=!global.ignore.pos, tag=!global.ignore]
 # Created by Galdeveer.
##

# Summon sculk watcher
execute at @s run function veer:fsh/sculk_watcher/summon

function veer:fsh/util/kill_in_void