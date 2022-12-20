##
 # Date: 12/20/22 
 # Redo scheduled functions, readd objectives, etc.
 # Created by Galdeveer.
##

# Reset scheduled functions
schedule clear veer:fsh/schedule
schedule clear veer:fsh/schedule_10t
schedule function veer:fsh/schedule 1t
schedule function veer:fsh/schedule_10t 1t

# Add any new objectives
function veer:fsh/objectives/add