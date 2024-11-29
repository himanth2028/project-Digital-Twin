% Load the dataset (simulated sensor data)
load('sensorData.mat');

% Preprocess the data
X = sensorData(:, 1:3);  % Features: vibration, temperature, pressure
Y = sensorData(:, 4);    % Labels: 0 for normal, 1 for failure

% Split data into training and testing sets
trainIdx = randperm(size(X, 1), round(0.7 * size(X, 1)));
X_train = X(trainIdx, :);
Y_train = Y(trainIdx, :);
X_test = X(~trainIdx, :);
Y_test = Y(~trainIdx, :);

% Train a decision tree model
model = fitctree(X_train, Y_train);

% Test the model
Y_pred = predict(model, X_test);

% Evaluate the model
accuracy = sum(Y_pred == Y_test) / length(Y_test);
disp(['Model Accuracy: ', num2str(accuracy * 100), '%']);

% Confusion matrix
confusionchart(Y_test, Y_pred);
