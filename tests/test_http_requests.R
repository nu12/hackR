require(testthat)

source("../functions/http_request.R")

test_that("HTTP requests return 200", {
  expect_that( http_request("nu12", "github"), equals(200) )
  expect_that( http_request("nu12", "twitter"), equals(200) )
  expect_that( http_request("nu12", "instagram"), equals(200) )
  expect_that( http_request("adsoncostanzifilho", "github"), equals(200) )
  expect_that( http_request("adsoncostanzi", "twitter"), equals(200) )
})

test_that("HTTP requests return 404", {
  expect_that( http_request("adsoncostanzi", "github"), equals(404) )
  expect_that( http_request("nu12-non-existant", "github"), equals(404) )
})
