
using System;
using Twilio;
using Twilio.Rest.Api.V2010.Account;


class Program
{
    static void Main(string[] args)
    {
        // Find your Account Sid and Token at twilio.com/console
        const string accountSid = "ACaab6300cb3d90da30f0420ba4ea6fd64";
        const string authToken = "40c33c9d39c2f3804592756939964926";

        TwilioClient.Init(accountSid, authToken);

        var message = MessageResource.Create(
        body: "Your KYC request has been submitted for verification...",
        from: new Twilio.Types.PhoneNumber("+17248254318"),
        to: new Twilio.Types.PhoneNumber("+91 8220340598")
        );

        Console.WriteLine(message.Sid);
    }
}

