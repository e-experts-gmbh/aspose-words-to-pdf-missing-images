using Aspose.Words;

public class WarningCallback : IWarningCallback
{
    public void Warning(WarningInfo info)
    {
        Console.WriteLine(info.Description);
    }
}
