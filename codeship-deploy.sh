#!/bin/sh
mkdir publish
dotnet publish -c Release travel-booking/travel-booking.csproj -o publish
