# Azure pricelist downloader
Simple PowerShell script to download current Azure pricelist from [Azure Retail Prices API](https://docs.microsoft.com/en-us/rest/api/cost-management/retail-prices/azure-retail-prices) and stire as CSV file.

To download full pricelist (takes long time):

```powershell
./prices.ps1 -FileName pricelist.csv
```

You can also submit OData filter as outline in API documentation, for example:

```powershell
# Download prices for certain service
./prices.ps1 -fileName servicebus.csv -filter "serviceName eq 'Service Bus'"

# Download only prices for reservations
./prices.ps1 -fileName reservations.csv -filter "priceType eq 'Reservation'"

# Download prices for certain service in specific region
./prices.ps1 -fileName servicebusWestEurope.csv -filter "serviceName eq 'Service Bus' and armRegionName eq 'westeurope'"
```