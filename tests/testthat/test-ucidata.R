context("test-ucidata")

test_that("ucidata works", {
  expect_true(is.data.frame(ucimlr::ucidata()))
  expect_message(ucimlr::ucidata())
})
