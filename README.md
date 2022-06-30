# Azure pricelist downloader
Simple PowerShell script to download current Azure pricelist from [Azure Retail Prices API](https://docs.microsoft.com/en-us/rest/api/cost-management/retail-prices/azure-retail-prices) and store as CSV file.

To download full pricelist (takes long time):

```powershell
./prices.ps1 -FileName pricelist.csv
```

You can also submit OData filter as outlined in API documentation, for example:

```powershell
# Download prices for certain service
./prices.ps1 -FileName servicebus.csv -Filter "serviceName eq 'Service Bus'"

# Download only prices for reservations
./prices.ps1 -FileName reservations.csv -Filter "priceType eq 'Reservation'"

# Download prices for certain service in specific region
./prices.ps1 -FileName servicebusWestEurope.csv -Filter "serviceName eq 'Service Bus' and armRegionName eq 'westeurope'"
```