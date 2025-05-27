# Run the solution

## Run on windows

1. Run the solution in Visual Studio

2. Find the generated output PDF file with the expected image in the `.\solution\bin\Debug\net8.0\Assets` folder

## Run in docker container

1. Create the docker image (build command included in Dockerfile)  
   `docker build --no-cache -t aspose-words-to-pdf-missing-images .`

2. Run the docker image  
   `docker run --rm  -v .\solution\Assets:/app/Assets --name aspose-words-to-pdf-missing-images aspose-words-to-pdf-missing-images`

3. Find the generated output PDF file with the missing image in the `.\solution\Assets` folder
