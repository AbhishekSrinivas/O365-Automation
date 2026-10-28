# Microsoft 365 Automation

PowerShell for Exchange Online and Microsoft 365 admin work.

- `scripts/` list distribution group members, export groups and members, delete mailbox contents (destructive)
- `guides/` command notes and a how-to for exporting group members
- `migration/` a sample mail migration plan

```powershell
Install-Module ExchangeOnlineManagement -Scope CurrentUser
Connect-ExchangeOnline -UserPrincipalName user@contoso.com
```

Replace `contoso.com` and the other placeholders with your own values.
