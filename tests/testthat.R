# use shift-cmd-t to run all tests
library(testthat)

test_check("radiant")

if (interactive()) devtools::run_examples()
# if (interactive()) devtools::run_examples(start = "regression")
# warnings()
