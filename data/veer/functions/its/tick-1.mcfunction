##
 # tick-1.mcfunction
 # 
 # Created by Galdeveer.
##

#declare tag veer.its.passenger.hasBobber

execute if entity @s[type=#veer:its/fix_glowing/vehicles,tag=veer.its.fix_glowing.vehicle] run function veer:its/fix_glowing/detect
execute if entity @s[type=silverfish,tag=veer.its.silverfish.battlecryer] run function veer:its/silverfish/battlecryer/handle