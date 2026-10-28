# Microsoft 365 Automation

PowerShell snippets and notes for common Microsoft 365 / Exchange Online administration tasks.

## Layout

| Path | Contents |
|---|---|
| `scripts/Get-Distribution-Group-Members.ps1` | List members of distribution groups |
| `scripts/Export-Groups-and-Members.ps1` | Export all groups and their members |
| `scripts/Delete-Mailbox-Contents.ps1` | Remove mailbox contents (destructive, use with care) |
| `guides/` | How-tos and command notes for group membership and exports |
| `migration/` | Example mail migration plan |

## Usage

```powershell
Install-Module ExchangeOnlineManagement -Scope CurrentUser
Connect-ExchangeOnline -UserPrincipalName user@contoso.com
```

Replace `contoso.com` and other placeholders with your own values before running. Never commit credentials or tenant data.
