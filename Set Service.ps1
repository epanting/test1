#Import-Module ServerManager
#$Servers = Import-Csv C:\Temp\Servers1.csv -UseCulture
$Servers = 'CTS1','CTS2','CTS3','CTS4', 'CTS5','CTS6','CTS7','CTS8','TRTS1','DRAGONTS', 'TRAININGTS'
ForEach ($Server in $Servers) {
  Set-Service -Name Themes -ComputerName $Server -StartupType Automatic -Status Running }


	
