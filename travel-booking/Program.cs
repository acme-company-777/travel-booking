using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Sentry;

namespace travel_booking
{
  public class Program
  {
    public static void Main(string[] args)
    {
      using (SentrySdk.Init("https://c9302b5d34e241079608858c61259381@sentry.io/1534799"))
      {
        // App code
        CreateWebHostBuilder(args).Build().Run();
      }
      
    }

    public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
        WebHost.CreateDefaultBuilder(args)
            .UseStartup<Startup>();
  }
}
