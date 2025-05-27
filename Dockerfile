FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY solution/*.csproj ./solution/
WORKDIR /app/solution
RUN dotnet restore
WORKDIR /app/
COPY solution/. ./solution/
WORKDIR /app/solution
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/runtime:8.0 AS runtime
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
RUN apt-get install -y libharfbuzz-icu0
COPY --from=build /app/solution/out ./
ENTRYPOINT ["dotnet", "aspose-words-to-pdf-missing-images.dll"]