set -e

echo "Backing up Notebooks..."
echo
cd $HOME/git_sync/notebooks

if [[ -n $(git status --porcelain) ]]; then
  git add .
  git commit -m "rev"
fi

cp -r $HOME/notebooks/* .
if [[ -n $(git status --porcelain) ]]; then
  git add .
  git commit -m "rev"
  git push origin main
  echo
  echo " backup complete"
else
  echo " nothing to backup"
fi