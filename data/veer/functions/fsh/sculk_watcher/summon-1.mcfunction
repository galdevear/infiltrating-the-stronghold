## 
 # Date: 12/20/22
 # Created by Galdeveer
##

#TODO: Keep global.ignore to ensure it doesn't get replaced by wandering traders in True Survival

#declare tag veer.its.sculk_watcher.cry
execute align y run summon bat ~ ~ ~ {BatFlags:1b,Silent:1b, DeathLootTable:"veer:its/sculk_watcher",Tags:["veer.its.sculk_watcher","global.ignore","veer.its.entity","veer.its.fix_glowing.vehicle"],Attributes:[{Name:"generic.armor",Base:4},{Name:"generic.armor_toughness",Base:1}],Passengers:[{Tags:["veer.its.sculk_watcher","veer.its.sculk_watcher.new","global.ignore","veer.its.entity","veer.its.fix_glowing.passenger","veer.its.sculk_watcher.cry"], id:"minecraft:snowball",Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-186546585,-2127674224,-1653899587,248958098],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGRkNGQ5NGVhNmMxMjJkZGRjOGI5MjJhNzFlMzcxZTlkY2VhMDQ2ZWMxMGY2MTI4OTBhZGVkOGNjNCJ9fX0="}]}}}}},{id:"minecraft:snowball",Tags:["global.ignore"],Item:{id:"minecraft:sculk_sensor",Count:1b}}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}