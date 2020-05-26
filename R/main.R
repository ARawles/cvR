build_commit_push <- function(commit_message = "Test commit") {
  rmarkdown::render("docs/cv.Rmd")
  pagedown::chrome_print("docs/cv.html")

  system(command = 'git config --global user.email "adamrawles@hotmail.co.uk"')
  system(command = 'git config --global user.name "ARawles"')
  system(command ='git add --all .')
  system(command = paste0('git commit -m"', commit_message, '"'))
  system(command = 'git push origin master')
}


