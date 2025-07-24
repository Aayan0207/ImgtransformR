test_that("rotate stops invalid input", {
  expect_error(rotate_image(89))
  expect_error(rotate_image(-90))
})
