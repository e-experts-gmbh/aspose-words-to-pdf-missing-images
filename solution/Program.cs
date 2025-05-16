using Aspose.Words;
using Aspose.Words.Saving;

const string licenseFile = "./Assets/Aspose.Words.NET.lic";

if (File.Exists(licenseFile))
{
	var license = new License();
	try
	{
		license.SetLicense(licenseFile);
	}
	catch (Exception ex)
	{
		throw new Exception("Could not set Aspose.Words license", ex);
	}
}

var input = await File.ReadAllBytesAsync("./Assets/Input.docx");

var doc = new Document(new MemoryStream(input));

var resultDocx = new MemoryStream();
doc.Save(resultDocx, SaveFormat.Docx);
await File.WriteAllBytesAsync("./Assets/Output.docx", resultDocx.ToArray());

var resultPdf = new MemoryStream();
doc.Save(resultPdf, new PdfSaveOptions
{
	PreserveFormFields = true,
	CustomPropertiesExport = PdfCustomPropertiesExport.Standard
});

await File.WriteAllBytesAsync("./Assets/Output.pdf", resultPdf.ToArray());
