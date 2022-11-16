##
 # init_replaceable.mcfunction
 # 
 #
 # Created by Galdeveer.
##
# Note: Never replace the mob your generating

# Check for some more tags before continuing
execute as @s[tag=!veer.fsh.end_watcher, tag=!veer.fsh.sculk_watcher, predicate=veer:fsh/watcher_pair/replace_chance] run function veer:fsh/watcher_pair/replace