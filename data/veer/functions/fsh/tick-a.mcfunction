##
 # tick-1.mcfunction
 # 
 # Created by Galdeveer.
##

#declare tag veer.fsh.passenger.hasBobber

execute as @s[type=#veer:fsh/fix_glowing/vehicles,tag=veer.fsh.fix_glowing.vehicle,predicate=veer:fsh/is_glowing] run function veer:fsh/fix_glowing/detect