##
 # tick-1.mcfunction
 # 
 # Created by Galdeveer.
##

#declare tag veer.fsh.passenger.hasBobber


execute as @s[type=#veer:fsh/fix_glowing/vehicles,predicate=veer:fsh/is_glowing] run function veer:fsh/fix_glowing/detect
execute as @s[type=silverfish,tag=veer.fsh.silverfish.battlecryer] run function veer:fsh/silverfish/battlecryer/handle