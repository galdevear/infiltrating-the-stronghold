##
 # Date: 12/20/22
 # Use invisible silverfish to trigger nearby infested blocks. Also can result in infestation.
 # Created by Galdeveer.
##

#>
#declare tag veer.its.silverfish.battlecryer
#declare tag veer.its.silverfish.battlecryer.new
#declare tag veer.its.silverfish.battlecryer.retToY
#declare objective veer.its.silverfish.battlecryer.ay ay = actualY

# Must have AI to trigger infested blocks, but this also means it can infest a block sometimes.
# Effect id#7 is instant damage
# Summon silverfish that will take damage and is tagged for removal
# Invis doesn't kick in for a tick therefore it needs to spawn out of sight first
# Suffocation damage doesn't kill the silverfish dispite the damage it takes.

# Get y pos
#declare storage veer.its.sf.summon_battlecryer
#declare path yPos
data modify storage veer.its.sf.summon_battlecryer yPos set from entity @s Pos[1]

execute at @s run summon silverfish ~ ~-64 ~ {Silent:1b,NoGravity:1b,Tags:["global.ignore","global.ignore.pos","veer.its.silverfish.battlecryer","veer.its.silverfish.battlecryer.new", "veer.its.silverfish.battlecryer.retToY","veer.its.entity"],ActiveEffects:[{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.armor",Base:100.0}]}
# initialize Entity onto scoreboard
execute at @s as @e[type=silverfish,tag=veer.its.silverfish.battlecryer.new,limit=1] run function veer:its/silverfish/summon_battlecryer-1