# Build

## Run in docker container

1. Build for linux  
   `dotnet publish ./solution -c release --os linux --self-contained`

2. Create docker image  
   `docker build --no-cache -t aspose-words-to-pdf-missing-images .`

3. Run docker image  
   `docker run --rm  -v .\solution\Assets:/app/Assets --name aspose-words-to-pdf-missing-images aspose-words-to-pdf-missing-images`
 