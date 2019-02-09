context("test-ucinews")

test_that("ucinews works", {
  expect_true(is.data.frame(ucimlr::ucinews()))
  expect_message(ucimlr::ucinews())
  expect_silent(ucimlr::ucinews(quiet = TRUE))
})
