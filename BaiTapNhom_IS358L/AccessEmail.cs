using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace BaiTapNhom_IS358L
{
    public class AccessEmail
    {
        public void SendEmail(string email, string subject, string body)
        {
            MailMessage message = new MailMessage();
            message.Sender = new MailAddress("mphuc225001@gmail.com");
            message.ReplyTo = new MailAddress("mphuc225001@gmail.com");
            message.From = new MailAddress("mphuc225001@gmail.com");

            message.To.Add(email);
            message.Subject = subject;
            message.IsBodyHtml = true;
            message.Body = body;
            message.Priority = MailPriority.Normal;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            NetworkCredential credential = new NetworkCredential("mphuc225001@gmail.com", "Nhập mật khẩu");
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Credentials = credential;
            client.EnableSsl = true;

            client.Send(message);

        }
    }
}