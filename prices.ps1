param(
    [Parameter()]
    [String]$FileName,
    [String]$Filter
)

$url = "https://prices.azure.com/api/retail/prices"
if ($filter) {
    $url = $url + "?`$filter=$filter"
}

While ($url) {
    Write-Host "Downloading from" $url
    $response = ConvertFrom-Json -InputObject (Invoke-WebRequest -Uri $url).Content
    $items = $items + $response.Items
    $url = $response[0].NextPageLink
}

Write-Host "Saving to" $fileName
$items | Export-Csv -Path $fileName -Encoding Ascii