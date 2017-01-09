#===============================================================================
# K-Nearest-Neighbors for the Numerai dataset
#
# Author: Carl Cortright
# Date: 1/5/2017
#
===============================================================================#
using ScikitLearn
using DataFrames, DataArrays

@sk_import neighbors: KNeighborsClassifier
@sk_import preprocessing: (LabelBinarizer, StandardScaler)

# Define he training set
train = readtable("/home/carl/Documents/Numerai/Datasets/Jan92017/numerai_training_data.csv")

# Pull out features and targets
features = convert(Array, train[1:50])
targets = convert(Array, train[51])

# Fit a KNN
knn = KNeighborsClassifier(n_neighbors=3, algorithm="ball_tree")
ScikitLearn.fit!(knn, features, targets)

println("before prediction")

for i in 1:length(features[:, 1])
  println(ScikitLearn.predict(knn, features[i, 1:50]) == targets[i])
end
# accuracy = sum() / length(targets)
# println("accuracy: $accuracy")
