
1
#installed git,git-cli,nodejs
npx create-react-app my-app
cd my-app

2
git init
git add .
git commit -m "Initial commit"
#created master branch
gh repo create my-app --public

3
git checkout -b update_logo

4
# Commands to replace the logo 
cd src
curl -o new_logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
ren logo.svg old_logo.svg
ren new_logo.svg logo.svg

5
# Commands to replace the link

cd ..
notepad App.js
# copied link in App.js

6
git add .
git commit -m "Updated logo and link"
git push origin update_logo

7
gh pr create --base master --head update_logo --title "Update logo" --body "This PR updates the logo and link"

8
gh pr merge 1 --auto




# REPO_URL https://github.com/mohitg9898/my-app
