
Set-ExecutionPolicy RemoteSigned -Force


#Admin Username to be used to run the Report
$UserName = “o365@huracansv.onmicrosoft.com"
$Password = "P@ssw0rd@123"


$cred = New-Object PSCredential $UserName, ($Password | ConvertTo-SecureString -AsPlainText -Force)

#Prompt for the password of the Partner Admin Username
$cred = get-credential -Credential $cred

#Establish a PS session with Microsoft Office 365
Connect-MsolService -Credential $Cred

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ `
-Credential $Cred -Authentication Basic -AllowRedirection

Import-PSSession $Session -AllowClobber | Out-Null  



$dt=(Get-Date).AddDays(-7).ToString("MM/dd/yyyy")

$Mailboxes = Get-Mailbox


Get-Mailbox -Identity "test1" | Search-Mailbox -SearchQuery {((Received -lt "$dt"))} -DeleteContent -whatif -force 


<#$Mailboxes = Get-Mailbox

Foreach ($Mailbox in $Mailboxes)

{

    Get-Mailbox -Identity $Mailbox.Name | Search-Mailbox -SearchQuery {((Received -lt "$dt"))} -DeleteContent -whatif -force 


}
#>