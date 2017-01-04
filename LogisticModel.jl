#===============================================================================
# Logistic Regression for the Numerai dataset
#
# Author: Carl Cortright
# Date: 1/4/2017
#
===============================================================================#
workspace()
using ScikitLearn
using DataFrames, DataArrays

@sk_import linear_model: LogisticRegression

train = readtable("Datasets/Jan32017/training.csv")

println("done")
