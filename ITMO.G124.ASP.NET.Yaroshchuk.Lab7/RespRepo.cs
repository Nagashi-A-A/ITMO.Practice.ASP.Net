using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITMO.G124.ASP.NET.Yaroshchuk.Lab1
{
    public class RespRepo
    {
        private static RespRepo repository = new RespRepo();
        private List<GuestResponse> responses = new List<GuestResponse>();
        public static RespRepo GetRepository()
        {
            return repository;
        }
        public IEnumerable<GuestResponse> GetAllResponses()
        {
            return responses;
        }
        public void AddResponse(GuestResponse response)
        {
            responses.Add(response);
        }
    }
}