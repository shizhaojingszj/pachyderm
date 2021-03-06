using DataFrames
using DecisionTree
using JLD

# Read the iris data set.
df = readtable(ARGS[1], header = false)

# Get the features and labels.
features = convert(Array, df[:, 1:4])
labels = convert(Array, df[:, 5])

# Train decision tree classifier.
model = RandomForestClassifier(ntrees=3, partialsampling=0.7)
DecisionTree.fit!(model, features, labels)

# Save the model.
save(ARGS[2], "model", model)

