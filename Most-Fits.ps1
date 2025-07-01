$VerbosePreference = "SilentlyContinue"
# Define the source and destination paths
$destinationPath = "D:\AstroPhotography"

# Get all folders matching the pattern "*-Subs"
$folders = Get-ChildItem -Path $destinationPath -Recurse -Directory | Where-Object { $_.Name -like "*-Sub" }
$results = @()
# Copy only .fits files from each matching folder to the destination
foreach ($folder in $folders) {
    $Items  = Get-ChildItem -Path "$($folder.FullName)\Lights" -Filter "*.fit" -ErrorAction SilentlyContinue     
    if($Items.count -gt 0){
        $item = "" | select-object Folder, Count
        "$Folder : $($Items.count)" 
        $item.folder =  $folder
        $item.count =  $items.count
        $results += $item
    }    
}

$results | Sort-Object -Property count -Descending |Select-Object -First 10

