using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using System.IO;

namespace PierresShoppe.Models
{
  public class FactoryContextFactory : IDesignTimeDbContextFactory<PierresShoppeContext>
  {

    PierresShoppeContext IDesignTimeDbContextFactory<PierresShoppeContext>.CreateDbContext(string[] args)
    {
      IConfigurationRoot configuration = new ConfigurationBuilder()
        .SetBasePath(Directory.GetCurrentDirectory())
        .AddJsonFile("appsettings.json")
        .Build();

      var builder = new DbContextOptionsBuilder<PierresShoppeContext>();
      var connectionString = configuration.GetConnectionString("DefaultConnection");

      builder.UseMySql(connectionString);

      return new PierresShoppeContext(builder.Options);
    }
  }
}