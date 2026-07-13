#!/bin/sh
# install.sh - Automated installer for skfetch

echo "🚀 Installing skfetch..."

# 1. Check if the script is being run with elevated root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "❌ Error: Please run this script with elevated privileges!"
    echo "   Example: sudo ./install.sh   or   doas ./install.sh"
    exit 1
fi

# 2. Make sure the local skfetch file is executable
chmod +x skfetch

# 3. Copy it to the system-wide binary folder
cp skfetch /usr/local/bin/skfetch
chmod +x /usr/local/bin/skfetch

echo "✅ Success! skfetch has been installed system-wide."
echo "   Type 'skfetch' anywhere in your terminal to use it."
