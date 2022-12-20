##
 # Binds vex to it's current actual location
 # Created by Galdeveer. 
##

# Tag to call function on entity
# declare tag veer.its.util.bind_vex Calls bind_vex function and removes this tag when finished.
# Current Position
#alias vector PosX Pos[0]
#alias vector PosY Pos[1]
#alias vector PosZ Pos[2]

# Testing Note: BoundX, etc. do not need to exist for this to work

## Bind a vex to it's current position
data modify entity @s BoundX set from entity @s Pos[0]
data modify entity @s BoundY set from entity @s Pos[1]
data modify entity @s BoundZ set from entity @s Pos[2]

## Remove call tag
# tag @s remove veer.its.util.bind_vex