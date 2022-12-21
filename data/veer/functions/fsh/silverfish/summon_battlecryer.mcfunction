##
 # summon_battlecryer.mcfunction
 # Version 1
 # Use invisible silverfish as technical entity to trigger nearby infested blocks. Also can result in infestation.
 # Created by Galdeveer.
##

#>
#@public
#declare tag veer.fsh.silverfish.battlecryer
#@private
#declare tag veer.fsh.silverfish.battlecryer.new
#@public
#declare tag veer.fsh.silverfish.battlecryer.retToY
#@public
#declare objective veer.fsh.ssb.ay ay = actualY
#@private
#declare score_holder @e[type=silverfish,tag=veer.test.silverfish.battlecryer.new,limit=1]
#@private
#alias entity battlecryRequester @s

# Must have AI to trigger infested blocks
# Effect id#7 is instant damage
# Tag as silverfish so it doesn't get initialized like a normal one.
# Summon silverfish that will take damage and is tagged for removal (Pretagged)
# PREVIOUS BUG: tags in entity nbt don't get changed by refactor
# Can't spawn the y level needed otherwise it will render there regardless of getting teleported

# Get y pos
#declare storage veer.fsh.sf.summon_battlecryer
#declare path yPos
data modify storage veer.fsh.sf.summon_battlecryer yPos set value 0
data modify storage veer.fsh.sf.summon_battlecryer yPos set from entity @s Pos[1]

# KNOWN ERROR: When your too high up, the lower places aren't loaded and you can't tp the silverfish back up.
# WHY ITS OK: Suffocation damage won't mess things up
# TODO: Maybe swap one bug for another and allow wierd behavior up high instead of no behavior
execute at @s run summon silverfish ~ 0 ~ {Silent:1b,NoGravity:1b,Tags:["global.ignore","global.ignore.pos","veer.fsh.silverfish","veer.fsh.silverfish.battlecryer","veer.fsh.silverfish.battlecryer.new", "veer.fsh.silverfish.battlecryer.retToY","veer.fsh"],ActiveEffects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.armor",Base:100.0}]}
# initialize Entity onto scoreboard
execute at @s as @e[type=silverfish,tag=veer.fsh.silverfish.battlecryer.new,limit=1] run function veer:fsh/silverfish/summon_battlecryer-1
# Sound for battlecry
# TODO: Remove. Did continue to function after commented out.
# execute at @s run playsound minecraft:block.sculk_sensor.clicking hostile @e[type=minecraft:player,distance=..20]