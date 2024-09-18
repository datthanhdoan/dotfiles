# alias 
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias cl clear

# Replace ls with lsd
Remove-Item alias:ls -Force
function ls { lsd @args }
Set-Alias -Name l -Value ls

# Additional lsd aliases
function la { lsd -a @args }
function ll { lsd -l @args }
function lla { lsd -la @args }
function lt { lsd --tree @args }

function psconfig {
    nvim $HOME\.config\powershell\user_profile.ps1
}

# module
Set-PSReadLineOption -EditMode Emacs 
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History

# Icons for lsd
Import-Module -Name Terminal-Icons

# Auto start ssh 
#start-ssh-agent.cmd

# theme
oh-my-posh init pwsh --config $Home\tokyonight_storm.omp.json | Invoke-Expression

# utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
