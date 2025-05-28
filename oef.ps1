# Function Get-ReverseString { [CmdletBinding()]
#     Param(
#         [Parameter(Position=1, ValueFromPipeline=$true)]
#         [string]$Forward
# 	)
	
# 	return -join $Forward[$Forward.Length..0]
# }

# Get-ReverseString powershell


$Forward = "lepeL"

return -join $Forward[$Forward.Length..0]