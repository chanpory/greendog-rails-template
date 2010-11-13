# Create a .gitignore file and a new local repository, commit everything

puts "\nInitializing new Git repo ...".magenta

run 'rm .gitignore'
file '.gitignore', <<-CODE.gsub(/^ {2}/, '')
  .DS_Store
  .bundle
  mkmf.log
  log/*.log
  tmp/**/*
  db/*.sqlite3
  public/stylesheets/compiled/*
  public/system/*
CODE

git :init
git :add => "."
git :commit => "-am 'Initial commit.'"
