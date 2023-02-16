# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

Get-EventLog -LogName System -After (Get-Date).AddDays(12) | Format-Table -AutoSize | Out-File c:\Users\joshp\desktop\last_24.txt

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

Get-EventLog -LogName System -EntryType Error | Format-Table -AutoSize | Out-File c:\Users\joshp\desktop\errors.txt

# Print to the screen all events with ID of 16 from the System event log.

Get-EventLog -LogName System -InstanceID 16 | Format-Table -AutoSize | Write-Output

# Print to the screen the most recent 20 entries from the System event log.’

Get-EventLog -LogName System -Newest 20 | Format-Table -AutoSize | Write-Output

## ioalsjkfklmdslojfm

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

Get-EventLog -LogName System -Newest 500 | Format-Table -AutoSize | Write-Output
