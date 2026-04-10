if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

set +e

sudo -v

echo ""
echo "› System:"
echo "  › Set a really fast key repeat"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
