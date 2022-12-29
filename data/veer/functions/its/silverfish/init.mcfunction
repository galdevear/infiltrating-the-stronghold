##
 # init_silverfish.mcfunction
 # Version 1
 # 
 # Created by Galdeveer.
##

execute at @s if predicate veer:its/in_stronghold run function veer:its/silverfish/summon_swarm

attribute @s generic.attack_damage modifier add d5046b55-9692-46ec-9931-dd852f93eaf5 "veer.silverfish.attack" 3 add
attribute @s generic.armor modifier add 7f56ed35-5837-497f-8bde-b191776d4f67 "veer.silverfish.armor" 1 add
attribute @s generic.attack_knockback modifier add 7f56ed35-5837-497f-8bde-b191776d4f67 "veer.silverfish.attack_knockback" 0.05 add

# Tag silverfish so this only happens once.
tag @s add veer.its.silverfish