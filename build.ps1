Get-ChildItem "$PSScriptRoot\md\*" -Include '*.md' | ForEach-Object {
    Write-Host "Converting $($PSItem.FullName)"
    & pandoc -s -o "$(Split-Path $PSItem.FullName -LeafBase).html" $PSItem.FullName
}
