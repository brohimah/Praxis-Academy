function ganti{
param(
    [Parameter(Mandatory=$true)][string]$direktori,
    [Parameter(Mandatory=$true)][string]$nama_baru
)
Rename-Item $direktori $nama_baru
Write-Host "file $direktori ada, diganti namanya menjadi $nama_baru"
}

function yesno{
param(
    [Parameter(Mandatory=$true)][string]$cari,
    [Parameter(Mandatory=$true)][string]$y_t
)
if($y_t -eq "y"){
ganti $cari
}else{
Write-Host "nama-file.java ada tidak diganti namanya"
}
}
function cari{
param(
    [Parameter(Mandatory=$true)][string]$direktori
)
$cari=Get-Childitem -Path $Path -Include *.java -Recurse
if($cari){
Write-Host "Ada file Java pada direktori {$cari}"
yesno $cari
}else{
Write-Host "Tidak ada file Java"
}}
Write-Host "========program ganti nama file .java"
cari