##
 # Date: 12/20/22 
 # Redo scheduled functions, readd objectives, etc.
 # Created by Galdeveer.
##

# Reset scheduled functions
schedule clear veer:its/schedule
schedule clear veer:its/schedule_10t
schedule function veer:its/schedule 1t
schedule function veer:its/schedule_10t 1t

# Add any new objectives
function veer:its/objectives/add