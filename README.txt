Notes on building this website.

* Set a Git submodule from 
  the mkh-quarto-theme repository at _theme.
  This step needs to be done only once
  on each machine.

  Delete the _theme folder (if it exists)
  and remove from git's cache:
      rm -rf _theme 
      git rm -r --cached _theme 

  Add the theme files at _theme:
      git submodule add https://github.com/MatthewHeun/mkh-quarto-theme.git _theme
  If an error occurs, try this:
      git submodule add --force https://github.com/MatthewHeun/mkh-quarto-theme.git _theme
  Then:
      git add .gitmodules _theme
      git commit -m "Add mkh-quarto-theme submodule at _theme" 
      git push origin main

* Execute _theme/build.sh
  This step creates the _quarto.yml file
  and runs quarto render.

* Say "quarto preview" to look at the site. 
  Make sure everything is working well.

* Push to GitHub to kick off a netlify build and deploy.


