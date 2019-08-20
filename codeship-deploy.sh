#!/bin/sh
mkdir ~/src/publish
dotnet publish -c Release ~/src/github.com/acme-company-777/travel-booking/travel-booking.csproj -o ~/src/publish
