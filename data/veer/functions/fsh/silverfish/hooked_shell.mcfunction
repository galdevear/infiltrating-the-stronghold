##
 # hooked_shell.mcfunction
 #
 # Created by Galdeveer.
##
advancement revoke @s only veer:fsh/silverfish/hooked_shell

execute at @s as @e[type=falling_block,scores={veer.fsh.passenger.bobber=1},distance=..20,predicate=veer:fsh/silverfish/riding_endermite,limit=1,sort=nearest] at @s run function veer:fsh/silverfish/hooked_shell-a