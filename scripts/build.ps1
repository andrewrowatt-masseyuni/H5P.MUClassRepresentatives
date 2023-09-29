Set-Location -Path 'scripts'
Remove-Item -Path 'h5p.h5p'
Get-ChildItem -Path .. -Exclude *.zip,*.h5p,README.md,scripts,.vscode | Compress-Archive -DestinationPath 'h5p.zip' -Force -CompressionLevel NoCompression
Rename-Item -Path 'h5p.zip' -NewName 'h5p.h5p'
