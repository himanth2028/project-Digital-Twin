% Load the dataset
data = load('sensor_data.mat');
X = data(:,1:end-1); % Features (vibration, temperature, etc.)
Y = data(:,end); % Labels (normal vs. failure)

% Train a decision tree
treeModel = fitctree(X, Y);
Y_pred = predict(treeModel, X);

% Evaluate performance
confMat = confusionmat(Y, Y_pred);
