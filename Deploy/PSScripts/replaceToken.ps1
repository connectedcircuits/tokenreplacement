# Finds a token in a text file and replaces it with the supplied value.

param (
    [string]$filePath, # Path and filename to the text file.
    [string]$token, # The token to seach for.
    [string]$value # The value to replace the token with.
)


(Get-Content $filePath) | Foreach-Object {
    $_ -replace $token, $value
} | Set-Content $filePath

Get-Content -Path $filePath