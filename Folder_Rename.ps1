#--EDIT--#
#define dir in which the new folders should be created
$path = "F:\Shows\XXX\Part 1"

#--EDIT--#
#count of folders to create
$ordnerAnzahl = 12

for ($i=1; $i -le $ordnerAnzahl; $i++) {
    $i2 = "{0:D2}" -f $i

    #--EDIT--#
    #folders names (substitute the episode number with "$i2" | Eg. S01E01 --> S01E$i2)
    $ordnerName = "TVShow.S02E$i2.DD51.DL.1080p.HD.x264-Crewz"
    
    write-host "Folders will look like: $ordnerName" 
    
    $confirmation = Read-Host "Are you Sure You Want To Proceed"
    if ($confirmation -eq 'y') {
        #create folders in "$path"
        New-Item -ItemType directory -Path $path\$ordnerName
    }
    else {
        write-host "Quit"
        break
    }
}
