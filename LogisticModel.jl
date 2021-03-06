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
@sk_import preprocessing: (LabelBinarizer, StandardScaler)

# Define he training set
train = readtable("/home/carl/Documents/Numerai/Datasets/Jan92017/numerai_training_data.csv")

# Pull out features and targets
features = convert(Array, train[1:50])
targets = convert(Array, train[51])

# Fit a logistic regression
logreg = LogisticRegression(fit_intercept=true)
ScikitLearn.fit!(logreg, features, targets)

accuracy = sum(ScikitLearn.predict(logreg, features) .== targets) / length(targets)
println("accuracy: $accuracy")
