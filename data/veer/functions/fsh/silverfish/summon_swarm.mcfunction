execute at @s run summon endermite ~ ~0.1 ~ {Lifetime:500,Attributes:[{Name:"generic.armor",Base:1},{Name:"generic.attack_damage",Base:4},{Name:"generic.attack_knockback",Base:0.05}]}
execute if predicate veer:fsh/silverfish/endermite_spawn_chance at @s run summon endermite ~ ~0.1 ~ {Lifetime:950,Attributes:[{Name:"generic.armor",Base:1},{Name:"generic.attack_damage",Base:4},{Name:"generic.attack_knockback",Base:0.05}]}
execute if predicate veer:fsh/silverfish/endermite_spawn_chance at @s run summon endermite ~ ~0.1 ~ {Lifetime:650,Attributes:[{Name:"generic.armor",Base:1},{Name:"generic.attack_damage",Base:4},{Name:"generic.attack_knockback",Base:0.05}]}
# Replace silverfish with shelled endermite
execute if predicate veer:fsh/silverfish/shelled_endermite_spawn_chance if entity @s[type=silverfish] at @s run function veer:fsh/silverfish/summon_shelled