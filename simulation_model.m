% Load and run the Simulink model
modelName = 'Digitaltwin_model';
load_system(modelName);
simOut = sim(modelName);

% Extract the data using the correct signal names
vibrationData = simOut.logsout.getElement('vibrationSignal').Values.Data;
temperatureData = simOut.logsout.getElement('temperatureSignal').Values.Data;
pressureData = simOut.logsout.getElement('pressureSignal').Values.Data;

% Extract the time data
time = simOut.logsout.getElement('vibrationSignal').Values.Time;

% Plot the signals
figure;
subplot(3,1,1);
plot(time, vibrationData);
title('Vibration Signal');
xlabel('Time (s)');
ylabel('Vibration (units)');

subplot(3,1,2);
plot(time, temperatureData);
title('Temperature Signal');
xlabel('Time (s)');
ylabel('Temperature (°C)');

subplot(3,1,3);
plot(time, pressureData);
title('Pressure Signal');
xlabel('Time (s)');
ylabel('Pressure (Pa)');



