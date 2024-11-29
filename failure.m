% Define failure threshold for vibration
vibrationThreshold = 5;

% Check if vibration exceeds the failure threshold
if max(vibrationData) > vibrationThreshold
    disp('Failure detected due to excessive vibration');
end
