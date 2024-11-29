% Create the real-time dashboard
app = uifigure('Name', 'Digital Twin Dashboard');

% Add gauges for vibration, temperature, and pressure
vibGauge = uigauge(app, 'circular', 'Position', [50, 300, 100, 100]);
tempGauge = uigauge(app, 'circular', 'Position', [200, 300, 100, 100]);
pressGauge = uigauge(app, 'circular', 'Position', [350, 300, 100, 100]);

% Add LED indicators for equipment health
healthLED = uilamp(app, 'Position', [150, 200, 50, 50]);

% Update gauges and indicators in real-time
for i = 1:length(time)
    % Update gauge values
    vibGauge.Value = vibration(i);
    tempGauge.Value = temperature(i);
    pressGauge.Value = pressure(i);

    % Predict equipment status and update health LED
    if Y_pred(i) == 1
        healthLED.Color = 'red';  % Failure
    else
        healthLED.Color = 'green';  % Normal
    end

    pause(0.1);  % Simulate real-time updates
end
