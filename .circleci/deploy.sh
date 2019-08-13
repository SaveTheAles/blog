hugo # command to build your site
cd public # cd into folder containing your built site

git init
git config user.email "ales.puchilo@gmail.com"
git config user.name "Ales Puchilo"

# echo "blog.seangransee.com" > CNAME # domain your site will live at
git add .
git commit -m "Deploy from CircleCI [skip CI]" # this will always be the only commit in your gh-pages branch

# use --quiet to avoid printing token in build logs
git push --force --quiet https://${BLOG_GITHUB_TOKEN}@github.com/savetheales/blog.git master:gh-pages # path to your repo on GitHub, using token for authentication