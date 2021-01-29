sudo apt-get update
sudo apt-get install python3.6
sudo apt-get install python3-pip
alias python3=python3.6
if python3 --version | grep -q 'Python 3.6'; then
    echo "Python installation successfully completed";
else 
    echo "Python cannot be installed correctly";
    exit 1
fi
