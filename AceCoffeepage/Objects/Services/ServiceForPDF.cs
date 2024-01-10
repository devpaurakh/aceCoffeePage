using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Models;
using QuestPDF.Fluent;

namespace AceCoffeepage.Objects.Services
{
    internal class ServiceForPDF
    {
        public static void PDFGenerate()
        {
            var filePath = Helper.GetCoffeeFilePath();
            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                if (json.Trim().Length > 0)
                {
                    var deserializedData = JsonSerializer.Deserialize<List<Coffees>>(json);
                    if (deserializedData != null)
                    {
                        var appPath = Helper.GetAppDirectoryPath();

                        Document.Create(container =>
                        {
                            container.Page(page =>
                            {
                                page.Header().Text("Title: Coffee");

                                page.Content().Table(table =>
                                {
                                    table.ColumnsDefinition(column =>
                                    {
                                        column.RelativeColumn();
                                        column.RelativeColumn();
                                    });

                                    table.Header(header =>
                                    {
                                        header.Cell().Text("Coffee Name: ");
                                        header.Cell().Text("Coffee Price: ");
                                    });

                                    foreach (var item in deserializedData)
                                    {
                                        table.Cell().Text(item.CoffeeName.ToString());
                                        table.Cell().Text(item.CoffeePrice.ToString());
                                    }
                                });
                                page.Footer().Text(text =>
                                {
                                    text.Span("Page :");
                                    text.CurrentPageNumber();
                                });
                            });
                        }).GeneratePdf(Path.Combine(appPath, "Coffee.pdf"));
                    }
                }
            }
        }
    }
}
