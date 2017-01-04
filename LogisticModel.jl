#===============================================================================
# Logistic Regression for the Numerai dataset
#
# Author: Carl Cortright
# Date: 1/4/2017
#
===============================================================================#
using ScikitLearn
using DataFrames, DataArrays

@sk_import linear_model: LogisticRegression

train = readtable("training")

println("done")
