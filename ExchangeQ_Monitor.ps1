Add-PSSnapin *exchange* -ErrorAction SilentlyContinue
Get-ExchangeServer | ? serverrole -eq Mailbox | Get-Queue | select Identity,DeliveryType,Status,MessageCount,NextHopDomain | Sort -Descending MessageCount | FT -AutoSize -Wrap
