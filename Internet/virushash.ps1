
function main {
    Write-Output "Hello there, what do you want to do? `n1. Do you want to check user specific files`n2. All files (might take a while)`n3. Specific folder"
    $in = Read-Host
    switch ($in) {
        1 {  }
        2 {  }
        3 {  }
        Default {
            cls
            Write-Output 'Number out of range'
            main
        }
    }    
}

function userfiles{

}

function allfiles {

}

function specificfolder {
    
}


main