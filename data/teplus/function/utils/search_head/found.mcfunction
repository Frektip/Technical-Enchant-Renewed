#==========================================================#
# @Credits: System based on KawaMood's search block package
#==========================================================#

# @Context: We are at the player head location
# We update the #block_found score to stop the recursion search process
# Then we run the callback function at the current block position

scoreboard players set #block_found teplus.tmp 1
$$(callback_func)