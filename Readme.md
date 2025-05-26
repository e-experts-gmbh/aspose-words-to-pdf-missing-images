# Build

## Run in docker container

1. Build for linux  
   `dotnet publish ./solution -c release --os linux --self-contained`

2. Create docker image  
   `docker build --no-cache -t aspose-words-to-pdf-missing-images .`

3. Run docker image  
   `docker run --rm  -v .\solution\Assets:/app/Assets --name aspose-words-to-pdf-missing-images aspose-words-to-pdf-missing-images`

4. Find the generated output PDF file with the missing image in the `.\solution\Assets` folder.

5. Downgrade Aspose.Words to version 24.11.1 and SkiaSharp.NativeAssets.Linux to version 2.88.9. Re-run the commands above and observe the generated output PDF file including the image in the `.\solution\Assets` folder.