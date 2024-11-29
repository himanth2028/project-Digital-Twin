% Load and run the Simulink model
modelName = 'DigitalTwin_Model';
load_system(modelName);
simOut = sim(modelName);

% Extract the data for each signal
%vibrationData = simOut.get('vibrationSignal');
temperatureData = simOut.get('temperatureSignal');
%pressureData = simOut.get('pressureSignal');

% Visualize the extracted data in MATLAB
time = simOut.get('time');  % Assuming time data is part of the output

figure;
subplot(3,1,1);
plot(time, vibrationData);
title('Vibration Signal');
xlabel('Time');
ylabel('Vibration (units)');

subplot(3,1,2);
plot(time, temperatureData);
title('Temperature Signal');
xlabel('Time');
ylabel('Temperature (°C)');

subplot(3,1,3);
plot(time, pressureData);
title('Pressure Signal');
xlabel('Time');
ylabel('Pressure (Pa)');
