% Ensure time and vibrationData are valid
if ~isempty(vibrationData) && ~isempty(time) && length(vibrationData) == length(time)
    % Plot the data
    figure;
    plot(time, vibrationData);
    title('Vibration Signal');
    xlabel('Time (s)');
    ylabel('Vibration (units)');
else
    disp('Invalid or empty data, check your signals and time vector.');
end
