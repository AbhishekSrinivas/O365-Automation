# Microsoft 365 Automation

PowerShell snippets and notes for common Microsoft 365 / Exchange Online administration tasks.

## Contents

| File | Purpose |
|---|---|
| `Get-DistributionGroupMembers.ps1` | List members of distribution groups |
| `Office 365 - Export Groups and Members.ps1` | Export all groups and their members |
| `Office 365 - Delete Mailbox Contents.ps1` | Remove mailbox contents (destructive, use with care) |
| `Add Users to Groups in O365.txt` | Notes on bulk group membership |
| `Script to export users and groups for O365.txt` | Export notes |
| `How to Save All Distribution List Members In txt File.docx` | How-to |
| `Mail Migration Plan Document.docx` | Example migration plan template |

## Usage

```powershell
Install-Module ExchangeOnlineManagement -Scope CurrentUser
Connect-ExchangeOnline -UserPrincipalName user@contoso.com
```

Replace `contoso.com` and other placeholders with your own values before running. Never commit credentials or tenant data.
