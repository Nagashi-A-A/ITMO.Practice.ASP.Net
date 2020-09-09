using System.Data.Entity;

namespace ITMO.G124.ASP.NET.Yaroshchuk.Lab1
{
    public class SampleContext : DbContext
    {
        public SampleContext() : base("SeminarBD") { }
        public DbSet<GuestResponse> GuestResponses { get; set; }
        public DbSet<Report> Reports { get; set; }
    }
}