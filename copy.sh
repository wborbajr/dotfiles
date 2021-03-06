cp -r ~/.zshrc .
cp -r ~/.config/nvim .

git add -A . && git commit -m "chore: updated" && git push origin HEAD
