context("test-wpdf_document_base.R")

test_that("Render with Prince", {
  rmarkdown::render("document.Rmd", wpdf_document_base(wpdf_engine = "prince"), "prince.pdf")
  knitr::knit_meta()
  expect_true(file.exists("prince.pdf"))

  expect_match(pdftools::pdf_text("prince.pdf"), "Created with Javascript")
})

test_that("Render with WeasyPrint", {
  rmarkdown::render("document.Rmd", wpdf_document_base(wpdf_engine = "weasyprint"), "weasyprint.pdf")
  knitr::knit_meta()
  expect_true(file.exists("weasyprint.pdf"))
})
