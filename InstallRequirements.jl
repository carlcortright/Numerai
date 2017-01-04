#===============================================================================
# Installs the required packages for the project
#
# Author: Carl Cortright
# Date: 1/3/2017
#
===============================================================================#
using Conda

Pkg.add("PyCall")
Pkg.add("ScikitLearn")
Pkg.add("DataFrames")
Conda.add("scikit-learn")
Pkg.update() # Making sure everything is up-to-date
