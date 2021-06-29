 <#

 1 liner for getting file owner permissions for dlls

 #>
 
 (Get-Acl -Path "C:\Windows\System32\*.dll") | Select-Object -Property Path,Owner | Where-Object {$_.Owner -inotlike "*NT*"}