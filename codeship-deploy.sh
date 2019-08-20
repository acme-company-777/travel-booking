#!/bin/sh
mkdir ~/clone/publish
dotnet publish -c Release ~/clone/travel-booking/travel-booking.csproj -o ~/clone/publish
