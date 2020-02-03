param(
    [Parameter(Mandatory=$true)][string]$direktori
)
$cari=Get-Childitem -Path $Path -Include *.java -Recurse
if($cari){
Write-Host "Ada file Java pada direktori {$cari}"
}else{
Write-Host "Tidak ada file Java"
}