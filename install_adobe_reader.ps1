$registryPath = "HKLM:\SOFTWARE\Adobe\Adobe Acrobat"
# Check if the registry path exists
if (Test-Path $registryPath) {
    Write-Host "Adobe Acrobat is already installed on this computer."
} else {
    # Adobe Reader is not installed, so install it
    Write-Output "Adobe Reader is not installed. Installing..."

    # Customize the download URL based on the version you want to install
    $adobeReaderDownloadURL = "https://ardownload2.adobe.com/pub/adobe/acrobat/win/AcrobatDC/2300320269/AcroRdrDCx642300320269_en_US.exe" 
    # Download and install Adobe Reader
    Start-Sleep -Seconds 60
    Invoke-WebRequest -Uri $adobeReaderDownloadURL -OutFile "C:\Program Files\Reader_Install_Setup.exe"
    Start-Process -FilePath "C:\Program Files\Reader_Install_Setup.exe" -Wait

    Write-Output "Adobe Reader has been installed."
}
