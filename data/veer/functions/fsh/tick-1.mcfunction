##
 # tick-1.mcfunction
 # 
 # Created by Galdeveer.
##

#declare tag veer.fsh.passenger.hasBobber


execute as @s[type=#veer:fsh/fix_glowing/passengers_and_vehicles] run function veer:fsh/fix_glowing/detect
execute as @s[type=silverfish,tag=veer.fsh.silverfish.battlecryer] run function veer:fsh/silverfish/battlecryer/handle