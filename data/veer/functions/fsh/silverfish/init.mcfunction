##
 # init_silverfish.mcfunction
 # Version 1
 # 
 # Created by Galdeveer.
##

execute at @s if predicate veer:fsh/in_stronghold run function veer:fsh/silverfish/summon_swarm

# Shrink silverfish detection range so they favor running away.
# (silverfish ai is much more passively active than normal mobs)
# Last Good Value: -11
# execute if predicate veer:fsh/silverfish/follow_range_decrease_chance run attribute @s generic.follow_range modifier add ffb55412-662e-40ff-bd2d-805517eff0ed "veer.silverfish.follow_range" -11 add

attribute @s generic.attack_damage modifier add d5046b55-9692-46ec-9931-dd852f93eaf5 "veer.silverfish.attack" 3 add
attribute @s generic.armor modifier add 7f56ed35-5837-497f-8bde-b191776d4f67 "veer.silverfish.armor" 1 add
attribute @s generic.attack_knockback modifier add 7f56ed35-5837-497f-8bde-b191776d4f67 "veer.silverfish.attack_knockback" 0.05 add

# Tag silverfish so this only happens once.
tag @s add veer.fsh.silverfish