src_files_path=/mnt/c/Apps/VSCodePort/data/user-data/User/snippets

set -e

echo " Backing up Snippets..."
echo
cd $HOME/git_sync/snippets

if [[ -n $(git status --porcelain) ]]; then
  git add .
  git commit -m "rev"
fi

cp -r $src_files_path/* ./vscode/
if [[ -n $(git status --porcelain) ]]; then
  git add .
  git commit -m "rev"
  git push origin main
  echo
  echo " backup complete"
else
  echo " nothing to backup"
fi
