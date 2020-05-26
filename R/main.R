create_pdf_version <- function(input_file = "docs/cv.Rmd") {
  raw_rmd <- readLines(con = "docs/cv.Rmd")
  pdf_rmd <- gsub('<a href = "https://arawles.co.uk/cv/cv.pdf">PDF Version</a>', replacement = '', x = raw_rmd)
  writeLines(text = pdf_rmd, con = "docs/cv_pdf.Rmd")
  closeAllConnections()
}

build_commit_push <- function(commit_message = "Test commit") {
  rmarkdown::render("docs/cv.Rmd")
  create_pdf_version()
  pagedown::chrome_print("docs/cv_pdf.Rmd", output = "docs/cv.pdf")

  system(command = 'git config --global user.email "adamrawles@hotmail.co.uk"')
  system(command = 'git config --global user.name "ARawles"')
  system(command ='git add --all .')
  system(command = paste0('git commit -m"', commit_message, '"'))
  system(command = 'git push origin master')
}





