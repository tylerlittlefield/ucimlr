context("test-pkg_size")

test_that("pkg_Size works", {
  expect_true(grepl("MB", ucimlr:::pkg_size()))
})
