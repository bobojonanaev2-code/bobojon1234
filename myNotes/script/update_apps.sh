#!/bin/bash

# ========================================
# update_apps.sh
# Updates all installed packages on Linux / macOS
# Usage: ./update_apps.sh [--terminal]
# ========================================

SHOW_TERMINAL=false

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --terminal) SHOW_TERMINAL=true ;;
        -h|--help)
            echo "Usage: $0 [--terminal]"
            echo ""
            echo "  --terminal    Open a new terminal window and run there"
            echo "  -h, --help    Show this help"
            exit 0
            ;;
        *) echo "Unknown option: $1"; exit 1 ;;
    esac
    shift
done

# Run in a new terminal window if --terminal is set
if [ "$SHOW_TERMINAL" = true ]; then
    SCRIPT_PATH="$(realpath "$0")"
    if command -v gnome-terminal &>/dev/null; then
        gnome-terminal -- bash -c "\"$SCRIPT_PATH\"; exec bash"
        exit 0
    elif command -v xterm &>/dev/null; then
        xterm -e "\"$SCRIPT_PATH\"; bash"
        exit 0
    else
        echo "Warning: no supported terminal emulator found, running in current shell"
    fi
fi

echo "========================================"
echo "System Package Update"
echo "========================================"
echo ""

OS="$(uname -s)"

case "$OS" in

    Linux)
        echo "[Linux] Detecting package manager..."
        echo ""

        if command -v apt &>/dev/null; then
            echo "[apt] Checking upgradable packages..."
            sudo apt list --upgradable -a 2>/dev/null
            echo ""
            echo "[apt] Updating package lists..."
            sudo apt update
            echo ""
            echo "[apt] Upgrading all packages..."
            sudo apt full-upgrade -y
            echo ""
            echo "[apt] Done."

        elif command -v dnf &>/dev/null; then
            echo "[dnf] Upgrading all packages..."
            sudo dnf upgrade --refresh -y
            echo "[dnf] Done."

        elif command -v pacman &>/dev/null; then
            echo "[pacman] Upgrading all packages..."
            sudo pacman -Syu --noconfirm
            echo "[pacman] Done."

        else
            echo "Error: no supported package manager found (apt / dnf / pacman)"
            exit 1
        fi
        ;;

    Darwin)
        echo "[macOS] Running softwareupdate..."
        sudo softwareupdate -ia
        echo "[macOS] Done."

        if command -v brew &>/dev/null; then
            echo ""
            echo "[Homebrew] Updating..."
            brew update && brew upgrade
            echo "[Homebrew] Done."
        else
            echo "[Homebrew] Not installed, skipping."
        fi
        ;;

    *)
        echo "Error: unsupported OS: $OS"
        exit 1
        ;;
esac

echo ""
echo "========================================"
echo "Update completed successfully!"
echo "========================================"
