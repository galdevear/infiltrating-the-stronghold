##
 # attack.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# TODO: Change drip to occur constantly since it reveals location while in ceiling.

# Player is seperated since checking for not spectator will actually evaluate wierdly for mobs since they don't have a gamemode
execute as @s[type=player,gamemode=!spectator] run effect give @s glowing 15 0

# TODO: adjust attack range
execute as @s[type=!player,type=!#veer:fsh/technical_entities,tag=!global.ignore.pos, tag=!global.ignore, tag=!veer.fsh.end_watcher] run effect give @s glowing 15 0