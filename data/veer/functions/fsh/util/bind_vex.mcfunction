##
 # bind_vex.mcfunction
 # version 3
 # Binds vex to it's current actual location. Does not require any delay.
 #alias entity vex @s
 #declare entity @s[type=vex,tag=!global.ignore.pos] Prereq to call file
 # 
 # Created by Galdeveer.
##

#alias vector PosX Pos[0]
#alias vector PosY Pos[1]
#alias vector PosZ Pos[2]

# Testing Note: BoundX, etc. do not need to exist for this to work 
#               Did not test what happens if this is ran on a non-vex

# Bind a vex to it's current position
data modify entity @s BoundX set from entity @s Pos[0]
data modify entity @s BoundY set from entity @s Pos[1]
data modify entity @s BoundZ set from entity @s Pos[2]