##
 # schedule.mcfunction
 # Version 1
 # Main function for the datapack
 # Created by Galdeveer.
##

#@private
#declare tag veer.fsh.entity.new
#@private 
#declare tag veer.fsh.entity
#@private
#declare entity @e[type=player,distance=..10,gamemode=!creative,gamemode=!spectator] Observable player

schedule function veer:fsh/schedule 1s

execute as @e run function veer:fsh/schedule-a
execute as @e run function veer:fsh/schedule-b