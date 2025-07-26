test_that("grayscale_value works", {
  expect_equal(grayscale_value(0.67, 0.98, 0.1), 0.786823, tolerance = 0.001)
  expect_equal(grayscale_value(0.778, 0.9867, 0.65), 0.885837, tolerance = 0.001)
})
