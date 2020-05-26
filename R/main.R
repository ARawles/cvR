build_commit_push <- function(commit_message = "Test commit") {
  rmarkdown::render("docs/cv.Rmd")
  pagedown::chrome_print("docs/cv.html")
  browser()
  system(command = 'git config --global user.email "adamrawles@hotmail.co.uk"')
  system(command = 'git config --global user.name "ARawles"')
  system(command ='git add --all .')
  system(command = 'git commit -m"test commit"')
  system(command = 'git push master')
#test
}


