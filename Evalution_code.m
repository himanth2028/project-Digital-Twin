% Example data (ensure that you have real sensor data from your simulation)
X = rand(100, 3);  % Random example data (100 samples, 3 features: vibration, temperature, pressure)
Y = randi([0, 1], 100, 1);  % Random binary labels (100 samples, 0 = normal, 1 = failure)


% Check if X and Y are defined and numeric
if exist('X', 'var') && exist('Y', 'var') && isnumeric(X) && isnumeric(Y)
    % Ensure X and Y have compatible sizes
    if size(X,1) == size(Y,1)
        % Split the data into training (70%) and testing sets (30%)
        cv = cvpartition(size(X, 1), 'HoldOut', 0.3);  % Hold out 30% for testing
        X_train = X(training(cv), :);
        Y_train = Y(training(cv), :);
        X_test = X(test(cv), :);
        Y_test = Y(test(cv), :);

        % Train a decision tree model for predictive maintenance
        model = fitctree(X_train, Y_train);

        % Make predictions on the test set
        Y_pred = predict(model, X_test);

        % Calculate accuracy
        accuracy = sum(Y_pred == Y_test) / length(Y_test);
        fprintf('Model Accuracy: %.2f%%\n', accuracy * 100);

        % Confusion matrix
        confMat = confusionmat(Y_test, Y_pred);
        confusionchart(confMat);
        title('Confusion Matrix');

    else
        error('X and Y must have the same number of rows.');
    end
else
    error('X and Y must be defined and must be numeric arrays.');
end
