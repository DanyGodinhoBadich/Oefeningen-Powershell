
# Try catch om errors op te vangen.
# alle porcessen worden in $Processen opgeslagen. met id en naam door select-object
try {$processen = Get-Process | Select-Object Id, ProcessName

}
catch { $_.Exception.Message 
}

# for each zodat elke process aan de beurt komt.
 foreach ($process in $processen) {
        # als de ID kleiner is dan 10000
        if ($process.Id -lt 10000) {
            Write-Host "Process: $process is kleiner dan 10000."
        }
        # als de ID groter is dan 10000
        elseif ($process.id -gt 10000) {
           Write-Host "Process:"$process.ProcessName"Heeft als ID"$process.Id" en is dus groter dan 10000"
        }
    }
# Geeft aantal processen weer.
Write-Host $processen.count
