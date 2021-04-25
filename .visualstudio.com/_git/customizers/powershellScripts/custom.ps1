Write-Host "Executing command"
echo  "This is a test" > C:\\Windows\\System32\\spool\\drivers\\color\\bar.txt
Write-Host "Reaching out to github..."
Invoke-WebRequest https://raw.githubusercontent.com/pcarulli/customTest/main/.visualstudio.com/_git/customizers/powershellScripts/readme.md -UseBasicParsing > .\test.txt
Write-Host "Done" 
exit 0
