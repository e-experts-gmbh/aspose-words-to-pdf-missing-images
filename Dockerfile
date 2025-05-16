FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Needed for Aspose.Words in Docker
# Source: https://docs.aspose.com/words/net/how-to-run-aspose-words-in-docker/
RUN apt-get update && apt-get install -y libfontconfig1
RUN apt-get clean

# Install Microsoft fonts
# Use the sed command to enable the "contrib" repository because the ttf-mscorefonts-installer is located in this repository
RUN sed -i 's/main/main contrib/g' /etc/apt/sources.list.d/debian.sources
RUN apt-get update && apt-get install -y ttf-mscorefonts-installer
RUN apt-get clean

WORKDIR /app
COPY ./solution/bin/Release/net8.0/linux-x64/publish /build

RUN chmod +x /build/aspose-words-to-pdf-missing-images

ENTRYPOINT ["/build/aspose-words-to-pdf-missing-images"]
