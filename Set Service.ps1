#Import-Module ServerManager
#$Servers = Import-Csv C:\Temp\Servers1.csv -UseCulture
$Servers = 'Server1','Server2','Server3','Server4', 'Server5','Server6','Server7','Server8'
ForEach ($Server in $Servers) {
  Set-Service -Name Themes -ComputerName $Server -StartupType Automatic -Status Running }