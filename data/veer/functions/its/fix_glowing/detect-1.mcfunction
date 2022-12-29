##
 # Date: 12/14/22
 # Created by Galdeveer.
##
#declare tag veer.its.fix_glowing.vehicle
#declare tag veer.its.fix_glowing.passenger
effect clear @s glowing
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=#veer:its/fix_glowing/passengers, tag=veer.its.fix_glowing.passenger, distance=..1,limit=1] run function veer:its/fix_glowing/start

#predicate=veer:its/is_glowing