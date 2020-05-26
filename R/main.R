build_commit_push <- function(commit_message = "Test commit") {
  rmarkdown::render("docs/cv.Rmd")
  pagedown::chrome_print("docs/cv.html")
  browser()
  system(command = paste0("REPO_DIR=", getwd(),
                          "&& cd ${REPO_DIR} && $ git add --all . && $ git commit -m '",
                          commit_message,
                          "' && $ git push master")
  )
}


