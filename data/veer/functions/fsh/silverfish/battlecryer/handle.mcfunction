##
 # Date:12/21/22
 #
 # Created by Galdeveer.
##

#> Silverfish Battlecryer
#declare tag veer.fsh.silverfish.battlecryer invis silverfish that takes damage once then is removed.

# Bring battlecryer back from void once the invisibility fully kicks in (vanilla rendering glitch)
execute as @s[type=silverfish,tag=veer.fsh.silverfish.battlecryer.retToY,scores={veer.fsh.silverish.battlecryer.lifeTimer = 0}] run execute store result entity @s Pos[1] double 1 run scoreboard players get @s veer.fsh.silverfish.battlecryer.ay
# Untag it so it doesn't happen again
tag @s[type=silverfish,tag=veer.fsh.silverfish.battlecryer.retToY,scores={veer.fsh.silverish.battlecryer.lifeTimer = 0}] remove veer.fsh.silverfish.battlecryer.retToY
# Send to void and kill
execute as @s[type=silverfish, scores={veer.fsh.silverish.battlecryer.lifeTimer=19..}] run function veer:fsh/util/kill_in_void
# Increment timer
scoreboard players add @s[type=silverfish, tag=veer.fsh.silverfish.battlecryer] veer.fsh.silverish.battlecryer.lifeTimer 1