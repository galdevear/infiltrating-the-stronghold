##
 # reset.mcfunction
 # Version 1 
 # Redo scheduled functions, readd objectives, etc.
 # Created by Galdeveer.
##

#TODO: Decide if remove_objectives should be ran here before add objectives (For updating purposes.)

# Reset scheduled functions
schedule clear veer:fsh/schedule
schedule clear veer:fsh/schedule_10t
schedule function veer:fsh/schedule 1t
schedule function veer:fsh/schedule_10t 1t

# Add any new objectives
function veer:fsh/objectives/add