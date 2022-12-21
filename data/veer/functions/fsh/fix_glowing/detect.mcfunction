##
 # Date: 12/14/22
 # Created by Galdeveer.
##
#declare tag veer.fsh.fix_glowing.vehicle
#declare tag veer.fsh.fix_glowing.passenger
effect clear @s glowing
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=#veer:fsh/fix_glowing/passengers, tag=veer.fsh.fix_glowing.passenger, distance=..1,limit=1] run function veer:fsh/fix_glowing/start