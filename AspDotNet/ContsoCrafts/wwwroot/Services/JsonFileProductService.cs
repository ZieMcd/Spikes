
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
using ContsoCrafts.wwwroot.Models;
using Microsoft.AspNetCore.Hosting;

namespace ContsoCrafts.wwwroot.Services
{
    public class JsonFileProductService
    {
        public IWebHostEnvironment WebHostEnvironment {get;}

        public JsonFileProductService(IWebHostEnvironment webHostEnvironment)
        {
            WebHostEnvironment = webHostEnvironment;
        }

        private string JsonFileName
        {
            get { return Path.Combine(WebHostEnvironment.WebRootPath, "data", "products.json");}
        }

        public IEnumerable<Product> GetProducts()
        {
            using(var jsonFileReader = File.OpenText(JsonFileName))
            {
                return JsonSerializer.Deserialize<Product[]>(jsonFileReader.ReadToEnd(),
                new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });
            }
        }
    }
}