test_that("invert works", {
  expect_equal(invert_value(0.7), 0.3)
  expect_equal(invert_value(0.2), 0.8)
})
