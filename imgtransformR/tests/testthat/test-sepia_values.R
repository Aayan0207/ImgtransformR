test_that("sepia red works", {
  expect_equal(sepia_value_red(0.543, 0.765, 0.890), 0.969894)
  expect_equal(sepia_value_red(0.345, 0.218, 0.935), 0.479942)
})

test_that("sepia green works", {
  expect_equal(sepia_value_green(0.543, 0.765, 0.890), 0.863817)
  expect_equal(sepia_value_green(0.345, 0.218, 0.935), 0.427033)
})

test_that("sepia blue works", {
  expect_equal(sepia_value_blue(0.543, 0.765, 0.890), 0.672796)
  expect_equal(sepia_value_blue(0.345, 0.218, 0.935), 0.332737)
})
