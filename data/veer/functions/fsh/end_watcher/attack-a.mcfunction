##
 #
 # Created by Galdeveer.
##

# Player is checked seperately because checking for "not spectator" will evaluate wierdly for mobs. This is because they don't have a gamemode.
execute as @s[type=player,gamemode=!spectator] run effect give @s glowing 15 0

# TODO: adjust attack range
execute as @s[type=!player,type=!#veer:fsh/technical_entities,tag=!global.ignore.pos, tag=!global.ignore, tag=!veer.fsh.end_watcher] run effect give @s glowing 15 0