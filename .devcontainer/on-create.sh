## Install additional apt packages
sudo apt-get update \
    && sudo apt upgrade -y \
    && sudo apt-get install -y dos2unix libsecret-1-0 xdg-utils \
    && sudo apt clean -y \
    && sudo rm -rf /var/lib/apt/lists/*

# Setup .NET Aspire Tooling
dotnet workload update

dotnet workload install aspire

# Trust the HTTPS development certificate
dotnet dev-certs https --trust

# set execution permission for pwsh:
chmod +x /usr/local/bin/pwsh

## OH-MY-POSH ##
# Uncomment the below to install oh-my-posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh