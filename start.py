import os

os.system("Set-ExecutionPolicy AllSigned")
os.system("Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))")

programs = ["sudo", "julia", "vscode", "mobaxterm"]

for program in programs:
  os.system("choco install " + program)

os.system("julia setup.jl")
os.system("python setup.py")
