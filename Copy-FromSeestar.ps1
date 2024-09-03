$VerbosePreference = "Continue"
# Define the source and destination paths
$usbPath = "D:\MyWorks"  # Replace with the actual drive letter of your USB storage
$destinationPath = "C:\AstroPhotography"

# Create the destination directory if it doesn't exist
if (-not (Test-Path -Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath
}

# Get all folders matching the pattern "*-Subs" on the USB storage
$folders = Get-ChildItem -Path $usbPath -Recurse -Directory | Where-Object { $_.Name -like "*-Sub" }

# Copy only .fits files from each matching folder to the destination
foreach ($folder in $folders) {   
    $fitsFiles = Get-ChildItem -Path $folder.FullName -Filter "*.fit" -File
    foreach ($file in $fitsFiles) {               
        if (-not (Test-Path -Path "$destinationPath\$($File.Directory.name)\Lights")) {            
            New-Item -ItemType Directory -Path "$destinationPath\$($File.Directory.name)\Lights"
        }
        if (-not (Test-Path -Path "$destinationpath\$($File.Directory.name)\Lights\$($file.name)")) {
            Copy-Item -Path $file.FullName -Destination "$destinationpath\$($File.Directory.name)\Lights\$($file.name)" #-Verbose
            Write-Information -MessageData " Copying: $destinationpath\$($File.Directory.name)\Lights\$($file.name)" -InformationAction Continue
        }
    }
}