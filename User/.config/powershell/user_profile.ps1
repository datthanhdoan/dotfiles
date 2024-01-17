# alias 
Set-Alias ll ls
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias cl clear

function psconfig {
    nvim $HOME\.config\powershell\user_profile.ps1
}

# module
Set-PSReadLineOption -EditMode Emacs 
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
# lsd replace this 
 Import-Module -Name Terminal-Icons


# Auto start ssh 
#start-ssh-agent.cmd
# theme
oh-my-posh init pwsh --config $Home\2612.omp.json | Invoke-Expression

# utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
