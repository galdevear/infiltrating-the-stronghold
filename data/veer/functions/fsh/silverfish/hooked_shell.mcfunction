##
 # hooked_shell.mcfunction
 #
 # Created by Galdeveer.
##
#declare tag veer.fsh.hooked_shell
#declare score_holder $foundShell

advancement revoke @s only veer:fsh/silverfish/hooked_shell

# Reset scores
scoreboard players set $foundShell veer.fsh.hooked_shell 0
# find shell
execute at @s as @e[type=falling_block,tag=veer.fsh.hooked_shell,distance=..20,predicate=veer:fsh/silverfish/riding_endermite] run function veer:fsh/silverfish/hooked_shell-1
#if score $foundShell veer.fsh.hooked_shell matches 0 at @s if entity @e[limit=1,type=fishing_bobber,distance=..1] at @s run function veer:fsh/silverfish/hooked_shell-a