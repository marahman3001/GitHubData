# Send Email via Gmail   (make sure you turn on less secure apps  https://myaccount.google.com/lesssecureapps)
# --------------------------
$From = "icon3001@gmail.com"
$Password = 'M3$aghar_128'
 $To = "abdulrahman3001@yahoo.com"
 $Cc = "md_abdul_rahman3001@yahoo.com"
 $Subject = "Email Subject with attachment 3"
 $Body =  gc "H:\temp\Newfile.txt" | out-string  # "Insert body text here"
 $SMTPServer = "smtp.gmail.com"
 $SMTPPort = "587"
 $attachment = "H:\temp\securityLog.csv"

 $secpasswd = ConvertTo-SecureString $Password -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ($From, $secpasswd)


Send-MailMessage -From $From -to $To -Cc $Cc -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $mycreds -Attachments $Attachment
# Added