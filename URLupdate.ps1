$ConfigFilePath = '$Filepath'
$content = [System.IO.File]::ReadAllText($ConfigFilepath).Replace("$OldURL","$NewURL")
[System.IO.File]::WriteAllText($ConfigFilePath, $content)
