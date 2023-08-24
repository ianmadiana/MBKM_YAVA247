#!/bin/bash --

echo ""
time=$(date +"%H")

if [ $time -ge 0 ] && [ $time -le 3 ]; then
    echo "Selamat dini hari $(whoami)"
elif [ $time -ge 4 ] && [ $time -le 11 ]; then
    echo "Selamat pagi $(whoami)"
elif [ $time -ge 12 ] && [ $time -le 14 ]; then
    echo "Selamat siang $(whoami)"
else
    echo "Selamat sore $(whoami)"
fi

echo ""
echo "-------------------- Check for update ------------------"
echo ""
sudo apt-get update
echo ""
echo "-------------------- Check for upgradable --------------"

upgradable_packages=$(apt list --upgradable)
echo "List of upgradable packages: "
echo ""
echo "$upgradable_packages"
echo ""

echo "--------------------------------------------------------"

echo "Do you want to upgrade? y/n"
read pilihan
if [ "$pilihan" == "y" ]; then
    echo "System upgrade granted"
    echo "Sorry but system upgrade not implemented yet"
else
    echo "Operation canceled"
fi

