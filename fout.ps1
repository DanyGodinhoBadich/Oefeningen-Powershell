# oefening, van  een error op door een getal te delen door 0
# Een Try Catch om express een error aan te maken en het te kunnen opvangen
try {
    # Met read-host kan je zelf een getal ingeven zonder het te hardcoden
    $getal = Read-Host "Voer een getal in"
    $som = 10 / $getal
    Write-Host "Het resultaat van de deling is: $som"
}
catch {
    # wanneer een error verschijnt wordt dit getoond
    Write-Host "Er is een fout opgetreden bij het delen: $_"
}