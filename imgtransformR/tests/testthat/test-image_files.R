test_that("Inavlid image files are stopped", {
  expect_error(open_image("hello.tsv"))
  expect_error(open_image("world.jpYG"))
  expect_error(save_image(c(),"world.jpYG"))
  expect_error(save_image(c(),"hello.tsv"))
})
