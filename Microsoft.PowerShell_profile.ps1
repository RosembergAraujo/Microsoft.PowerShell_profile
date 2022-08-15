oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes/lambdageneration.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes/atomic.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes/kali.omp.json' | Invoke-Expression


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Import-Module -Name Terminal-Icons


#Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias v RunNvimLocal
Set-Alias n RunNvim
Set-Alias alexa RunAlexa

function RunAlexa{
  python C:\Users\rosem\envDev\python\Alexa_Consummer_Api\main.py
  }

function RunNvim($path) {
  nvim ${path}
  }

function RunNvimLocal() {
  $curDir = Get-Location
  nvim $curDir
}

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}


# echo "
# ██████╗ ███████╗██████╗  ██████╗  █████╗ ██████╗  █████╗ ██╗   ██╗     ██╗ ██████╗ 
# ██╔══██╗██╔════╝██╔══██╗██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██║   ██║     ██║██╔═══██╗
# ██████╔╝█████╗  ██████╔╝██║  ███╗███████║██████╔╝███████║██║   ██║     ██║██║   ██║
# ██╔══██╗██╔══╝  ██╔══██╗██║   ██║██╔══██║██╔══██╗██╔══██║██║   ██║██   ██║██║   ██║
# ██████╔╝███████╗██║  ██║╚██████╔╝██║  ██║██║  ██║██║  ██║╚██████╔╝╚█████╔╝╚██████╔╝
# ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚════╝  ╚═════╝
# " 


# echo "
# ██████╗ ███████╗██████╗  ██████╗                █████╗ ██████╗  █████╗ ██╗   ██╗     ██╗ ██████╗     
# ██╔══██╗██╔════╝██╔══██╗██╔════╝               ██╔══██╗██╔══██╗██╔══██╗██║   ██║     ██║██╔═══██╗    
# ██████╔╝█████╗  ██████╔╝██║  ███╗    █████╗    ███████║██████╔╝███████║██║   ██║     ██║██║   ██║    
# ██╔══██╗██╔══╝  ██╔══██╗██║   ██║    ╚════╝    ██╔══██║██╔══██╗██╔══██║██║   ██║██   ██║██║   ██║    
# ██████╔╝███████╗██║  ██║╚██████╔╝              ██║  ██║██║  ██║██║  ██║╚██████╔╝╚█████╔╝╚██████╔╝    
# ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝               ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚════╝  ╚═════╝
# "


# echo "
#           _____                   _______                   _____                    _____          
#          /\    \                 /::\    \                 /\    \                  /\    \         
#         /::\    \               /::::\    \               /::\    \                /::\    \        
#        /::::\    \             /::::::\    \             /::::\    \              /::::\    \       
#       /::::::\    \           /::::::::\    \           /::::::\    \            /::::::\    \      
#      /:::/\:::\    \         /:::/~~\:::\    \         /:::/\:::\    \          /:::/\:::\    \     
#     /:::/  \:::\    \       /:::/    \:::\    \       /:::/  \:::\    \        /:::/__\:::\    \    
#    /:::/    \:::\    \     /:::/    / \:::\    \     /:::/    \:::\    \      /::::\   \:::\    \   
#   /:::/    / \:::\    \   /:::/____/   \:::\____\   /:::/    / \:::\    \    /::::::\   \:::\    \  
#  /:::/    /   \:::\    \ |:::|    |     |:::|    | /:::/    /   \:::\ ___\  /:::/\:::\   \:::\    \ 
# /:::/____/     \:::\____\|:::|____|     |:::|    |/:::/____/     \:::|    |/:::/__\:::\   \:::\____\
# \:::\    \      \::/    / \:::\    \   /:::/    / \:::\    \     /:::|____|\:::\   \:::\   \::/    /
#  \:::\    \      \/____/   \:::\    \ /:::/    /   \:::\    \   /:::/    /  \:::\   \:::\   \/____/ 
#   \:::\    \                \:::\    /:::/    /     \:::\    \ /:::/    /    \:::\   \:::\    \     
#    \:::\    \                \:::\__/:::/    /       \:::\    /:::/    /      \:::\   \:::\____\    
#     \:::\    \                \::::::::/    /         \:::\  /:::/    /        \:::\   \::/    /    
#      \:::\    \                \::::::/    /           \:::\/:::/    /          \:::\   \/____/     
#       \:::\    \                \::::/    /             \::::::/    /            \:::\    \         
#        \:::\____\                \::/____/               \::::/    /              \:::\____\        
#         \::/    /                 ~~                      \::/____/                \::/    /        
#          \/____/                                           ~~                       \/____/         
                                                                                                    
# "

# echo "
# ________/\\\\\\\\\_______________________/\\\_________________        
#  _____/\\\////////_______________________\/\\\_________________       
#   ___/\\\/________________________________\/\\\_________________      
#    __/\\\_________________/\\\\\___________\/\\\______/\\\\\\\\__     
#     _\/\\\_______________/\\\///\\\____/\\\\\\\\\____/\\\/////\\\_    
#      _\//\\\_____________/\\\__\//\\\__/\\\////\\\___/\\\\\\\\\\\__   
#       __\///\\\__________\//\\\__/\\\__\/\\\__\/\\\__\//\\///////___  
#        ____\////\\\\\\\\\__\///\\\\\/___\//\\\\\\\/\\__\//\\\\\\\\\\_ 
#         _______\/////////_____\/////______\///////\//____\//////////__
# "