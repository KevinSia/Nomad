#Nomad - A platform for ~~lazy~~ travelers and planners

## Getting started
- Make a folder with a name of your choice
- `cd` into the folder you've just made
- clone source files from github -> `git clone https://github.com/KevinSia/Nomad`
- Done! :)

## Develop!
- *Before* you start, make sure you run the following:
  - switch to master 
    - `git checkout master` 
  - get latest changes made by other teammates from master
    - `git pull origin master`
  - if there are conflicts (will be shown after `pulling`), inform other teammates.
  - install the gems
    - `bundle install`
  - do unfinished migrate
    - `rake db:migrate`
  - Done! :) 
- Always *make a new branch* before starting to work on a new feature 
  - Example: working a form
    - Make sure you're making a new branch *from master branch*
      - `git branch`
    - Create a new branch 
      - `git checkout -b <type>/<description>`
      - Eg: `git checkout -b user/sign_in`
    - *Commit often* with a meaningful commit message that tells what you've done for this commit 
    - Once done, `add`, `commit` and push to Github 
      - `git push origin <branch-name>`
      - Eg: `git push origin user/sign_in`
      - *Do not* push/merge into master without making a pull request :)
