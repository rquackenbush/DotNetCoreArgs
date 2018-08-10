# ===================
# Build
# ===================
FROM microsoft/dotnet:2.1-sdk AS build

COPY src/* /src/

RUN dotnet publish /src/Hello.csproj -c Release -o /app

# ===================
# Final
# ===================
FROM microsoft/dotnet:2.1-runtime AS base
WORKDIR /app

COPY --from=build /app/* /app/

WORKDIR /app

ENTRYPOINT ["dotnet", "Hello.dll"]