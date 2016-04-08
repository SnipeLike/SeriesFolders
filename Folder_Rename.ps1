#--EDIT--#
#Verzeichnis INDEM die Ordner erstellt werden sollen
$path = "C:\Series\PrisonBreak\S04\"

#--EDIT--#
#Anzahl der zu erstellenden Ordner
$ordnerAnzahl = 24

for ($i=1; $i -le $ordnerAnzahl; $i++) {
    $i2 = "{0:D2}" -f $i

    #--EDIT--#
    #Namen der Ordner (Episoden "01" durch "$i2" ersetzten | zB. S01E$i2)
    $ordnerName = "Prison.Break.S04E$i2.German.DL.DTS.BluRay.1080p.x264-x264Crew"

    
    #Ordner under "$path" erstellen
    New-Item -ItemType directory -Path $path\$ordnerName

}

