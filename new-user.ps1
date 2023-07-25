# Get the user's input for the new user account
$Username = Read-Host "Enter the new user name:"
$Password = Read-Host "Enter the new user password:" -AsSecureString
$FullName = Read-Host "Enter the new user's full name:"

# Create the new user account
New-LocalUser -Name $Username -Password $Password -FullName $FullName

# Set the user's account expiration date
Set-LocalUserExpiration -User $Username -ExpirationDate (Get-Date).AddDays(365)
