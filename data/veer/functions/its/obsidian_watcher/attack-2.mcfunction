##
 # attack.mcfunction
 # 
 #
 # Created by Galdeveer.
##

# Player is seperated since checking for "not spectator' will actually evaluate wierdly for mobs since they don't have a gamemode
execute if entity @s[type=player,gamemode=!spectator] run effect give @s weakness 15 1

execute if entity @s[type=!player,type=!#veer:its/technical_entities,tag=!global.ignore.pos, tag=!global.ignore, tag=!veer.its.end_watcher, tag=!veer.its.sculk_watcher, tag=!veer.its.obsidian_watcher] run effect give @s weakness 15 1