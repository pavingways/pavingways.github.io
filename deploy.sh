rm -rf _deploy/*
cp -a _site/* _deploy/
cd _deploy/
mv index.html new.html
git add -A
git commit -m "site update on `date +'%Y-%m-%d %H:%M:%S'`"
git push -f origin master
cd ..
