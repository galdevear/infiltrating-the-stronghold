##
 # hooked_shell.mcfunction
 #
 # Created by Galdeveer.
##
#declare tag veer.its.hooked_shell
#declare score_holder $foundShell

advancement revoke @s only veer:its/silverfish/hooked_shell

# Reset scores
scoreboard players set $foundShell veer.its.hooked_shell 0
# find shell
execute at @s as @e[type=falling_block,tag=veer.its.hooked_shell,distance=..20,predicate=veer:its/silverfish/riding_endermite] run function veer:its/silverfish/hooked_shell-1
#if score $foundShell veer.its.hooked_shell matches 0 at @s if entity @e[limit=1,type=fishing_bobber,distance=..1] at @s run function veer:its/silverfish/hooked_shell-a