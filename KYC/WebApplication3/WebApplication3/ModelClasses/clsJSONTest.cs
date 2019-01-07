using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.IO;
using System.Text;
//using System.Collections.Generic.List;
namespace WebApplication3
{
    public class clsJSONTest
    {
       
        public void fun(clsModel obj) {

            //    clsModel obj2 = new clsModel();
            //    List<clsModel> _data = new List<clsModel>();
            //    _data.Add(new clsModel()
            //    {
            //    //   obj2.ClientName = obj.ClientName;
            //    //obj2.ClientID;
            //    //obj2.Procedure;

            //});


            ///
            ///Reading from Json
            ///
            //string file = @"C:\Users\keerthik\Documents\non-linear-office-a\KYC\WebApplication3\json.json";
            //JObject o1 = JObject.Parse(File.ReadAllText(@"C:\Users\keerthik\Documents\non-linear-office-a\KYC\WebApplication3\json.json"));
            //StreamReader file = File.OpenText(@"C:\Users\keerthik\Documents\non-linear-office-a\KYC\WebApplication3\json.json");
            //using (JsonTextReader reader = new JsonTextReader(file))
            //{
            //    JObject o2 = (JObject)JToken.ReadFrom(reader);
            //}
            ////List<clsModel> exam = new List<clsModel>();
            ////exam.Add(obj);
            //o1.Add(obj);
            //string json = JsonConvert.SerializeObject(o1, Formatting.Indented);
            //System.IO.File.AppendAllText(@"C:\Users\keerthik\Documents\non-linear-office-a\KYC\WebApplication3\json.json", JsonConvert.SerializeObject(o1, Formatting.Indented));
        }
        // serialize JSON to a string and then write string to a file
        //File.WriteAllText(@"c:\movie.json", JsonConvert.SerializeObject(obj));



        //// serialize JSON directly to a file
        //using (StreamWriter file = File.CreateText(@"c:\movie.json"))
        //{
        //    JsonSerializer serializer = new JsonSerializer();

        //        JsonSerializer.Serialize(file, movie);
        //}
    }
   
}
