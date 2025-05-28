# Oefening.
# Zorg ervoor dat een woord of tekst omgekeerd wordt weergegeven.

# De zin word eerst in een string geplaatst.
$string = "This is a test, hope it works!"
# Met -split worden de letters appart gehouden in een array.
$arr = $string -split ""
$arr
# De letters worden van plaats verwisselt.
[array]::Reverse($arr)
$arr
# De Omgekeerde letters worden samengevoegd in $arr en vormen een omgekeerde zin.
$arr -join ''
