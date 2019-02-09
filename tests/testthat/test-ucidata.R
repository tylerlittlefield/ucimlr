context("test-ucidata")

test_that("ucidata works", {
  expect_true(is.data.frame(ucimlr::ucidata()))
  expect_message(ucimlr::ucidata())
  expect_silent(ucimlr::ucidata(quiet = TRUE))
})
