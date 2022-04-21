create_pdf_version <- function(input_file = "docs/cv.Rmd") {
  raw_rmd <- readLines(con = "docs/cv.Rmd")
  pdf_rmd <- gsub('<a href = "./cv.pdf">PDF Version</a>', replacement = '', x = raw_rmd)
  writeLines(text = pdf_rmd, con = "docs/cv_pdf.Rmd")
  closeAllConnections()
}

render <- function(input_file = "docs/cv.Rmd") {
  rmarkdown::render(input_file)
  create_pdf_version(input_file=input_file)

  rmarkdown::render("docs/cv_pdf.Rmd")
  pagedown::chrome_print("docs/cv_pdf.html", output = "docs/cv.pdf")
}





