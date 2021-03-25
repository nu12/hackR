require(testthat)

source("../functions/http_request.R")

test_that("HTTP requests return 200", {
  expect_that( get_status_code("nu12", "github"), equals(200) )
  expect_that( get_status_code("nu12", "twitter"), equals(200) )
  expect_that( get_status_code("nu12", "instagram"), equals(200) )
  expect_that( get_status_code("adsoncostanzifilho", "github"), equals(200) )
  expect_that( get_status_code("adsoncostanzi", "twitter"), equals(200) )
})

test_that("HTTP requests return 404", {
  expect_that( get_status_code("adsoncostanzi", "github"), equals(404) )
  expect_that( get_status_code("nu12-non-existant", "github"), equals(404) )
})
