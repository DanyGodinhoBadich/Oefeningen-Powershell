# Schrijf een script met daarin output voor elke stream van 1 tot 6, gebruik makende van
# de daarbijhorende Cmdlet. Voeg ook de Write-Host Cmdlet toe om de Host stream te
# testen. Probeer dit script zo uit te voeren dat je de output van een elke stream te zien
# Output voor elke stream van 1 tot 6

# 1. Output stream (Success)
# Write-Output "Dit is de Output stream (Success)."

# # 2. Error stream
# Write-Error "Dit is de Error stream."

# # 3. Warning stream
# Write-Warning "Dit is de Warning stream."

# # 4. Verbose stream
# Write-Verbose "Dit is de Verbose stream." -Verbose

# # 5. Debug stream
# Write-Debug "Dit is de Debug stream." -Debug

# # 6. Information stream
# Write-Information "Dit is de Information stream."

# # Host stream
# Write-Host "Dit is de Host stream."

# # Voeg een param blok toe met [cmdletbinding()] om common parameters te ondersteunen
# [CmdletBinding()]
# param()

# # Test de output van elke stream door het script uit te voeren met verschillende parameters
# Write-Output "Voer het script uit met -Verbose om Verbose output te zien."
# Write-Output "Voer het script uit met -Debug om Debug output te zien."
# Write-Output "Bekijk welke streams standaard zichtbaar zijn en welke niet.

# for ($i = 1; $i -lt 11; $i++) {
#     Write-Host  $i
#     Start-Sleep -Seconds 1
# }


# for ($i = 1; $i -le 10; $i++) {
#     $progressParams10 = @{
#         ID              = 0
#         Activity        = "script in uitvoering"
#         Status          = "$i van 10"
#         PercentComplete = ($i / 10) * 100
#     }

#     Write-Progress @progressParams10

#     for ($j = 1; $j -le 5; $j++) {
#         $progressParams5 = @{
#         ID              = 1
#         ParentID        = 0
#         Activity        = "script in uitvoering"
#         Status          = "$j van 5"
#         PercentComplete = ($j / 5) * 100
#     }
#     Write-Progress @progressParams5
#     Start-Sleep -Seconds 1
#     }
# }

Get-ChildItem | Out-File -FilePath "./Get-ChildItem_Output.txt"
Get-ChildItem > "./Get-ChildItem_Output.txt"
Get-ChildItem >> "./Get-ChildItem_Output.txt"

Get-Content ./get-childitem_output.txt>&1
*>&1

# 1. Maak een nieuw bestand aan via New-Item
Write-Output "1. Een nieuw bestand aanmaken:"
New-Item -Path "./testfile.txt" -ItemType File

# 2. Verwijder het bestand
Write-Output "2. Het bestand verwijderen:"
Remove-Item -Path "./testfile.txt"

# 3a. Maak een nieuw bestand aan en stuur de output naar Out-Null
Write-Output "3a. Een nieuw bestand aanmaken met Out-Null:"
New-Item -Path "./testfile.txt" -ItemType File | Out-Null
Remove-Item -Path "./testfile.txt"

# 3b. Maak een nieuw bestand aan en stuur de output naar $null
Write-Output "3b. Een nieuw bestand aanmaken met > null:"
New-Item -Path "./testfile.txt" -ItemType File > $null
Remove-Item -Path "./testfile.txt"

# 3c. Maak een nieuw bestand aan en wijs de output toe aan $null
Write-Output "3c. Een nieuw bestand aanmaken met null = :"
$null = New-Item -Path "./testfile.txt" -ItemType File
Remove-Item -Path "./testfile.txt"