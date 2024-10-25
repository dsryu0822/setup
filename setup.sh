sudo apt install git -y
sudo apt install gedit -y
sudo apt install htop -y
sudo apt install openssh-server -y

sudo apt install samba-client cifs-utils -y
smbclient -L 155.230.152.92 -U rmsms
mkdir g
sudo mount -t cifs -o username=rmsms,dir_mode=0777,file_mode=0777,nounix //155.230.152.92/g g

curl -fsSL https://install.julialang.org | sh
cd Downloads
git cloen https://github.com/dsryu0822/setup.git
cd setup
julia setup.jl
