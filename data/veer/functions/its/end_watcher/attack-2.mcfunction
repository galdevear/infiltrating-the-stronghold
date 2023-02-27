##
 # Date: 12/20/22
 #
 # Created by Galdeveer.
##

# Player is checked seperately because checking for "not spectator" will evaluate wierdly for mobs. This is because they don't have a gamemode.
execute if entity @s[type=player,gamemode=!spectator] run effect give @s glowing 15 0

# TODO: adjust attack range
execute if entity @s[type=!player,type=!#veer:its/technical_entities,tag=!global.ignore.pos, tag=!global.ignore, tag=!veer.its.end_watcher] run effect give @s glowing 15 0