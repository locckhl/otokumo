# OtoKumo 

[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)

# About this project
An application to share your favorite music to the world

Follow the following steps to run this project: ❤❤

* Clone:
    * Using https: `https://github.com/locckhl/otokumo.git` 
    * Using ssh: `git@github.com:locckhl/otokumo.git`
    * Using Github CLI: `gh repo clone locckhl/otokumo`
* Install ruby ( >= 2.6.3 ) and rails (>= 6.0.3)
* Install the bundle's packages: `bundle install`
* `yarn install --check-files`
* Start server: `rails s`
* Note
    * Do not modify anything in **main** branch, you have to checkout your own branch
    * Just modify only files **related to your task**, try not to modify **other files**
* Useful command
    * Rails (or Rake)
      * `rails db:reset` (drop + recreate database)
      * `rails g scaffold {model_name} {first_attr}:{type} {second_attr}:{type}` : create basic MVC files
      * `rails g controller StaticPages home` : create a controller and action
      * `rails db:migrate` : running migration files
      * `rails db:rollback STEP={number}` : roll back specific migration
    * Git
      * `git reset --hard` : reset all modified files to the latest local commit
      * `git clean -fd` : delete all new file 
      * `git config credential.helper store` : run this so you wont be asked to input github account and password again
