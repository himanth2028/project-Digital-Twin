% Simulate real-time sensor data
time = 0:0.1:1000;  % Simulation time in seconds

% Generate vibration data with noise
vibration = sin(0.2 * time) + 0.1 * randn(size(time));

% Generate temperature data with gradual increase and noise
temperature = 50 + 10 * sin(0.05 * time) + 0.5 * randn(size(time));

% Generate pressure data with a slow drift and noise
pressure = 100 + 5 * sin(0.1 * time) + 0.2 * randn(size(time));

% Plot the data
figure;
subplot(3,1,1);
plot(time, vibration);
title('Simulated Vibration Data');
xlabel('Time (s)');
ylabel('Vibration (units)');

subplot(3,1,2);
plot(time, temperature);
title('Simulated Temperature Data');
xlabel('Time (s)');
ylabel('Temperature (°C)');

subplot(3,1,3);
plot(time, pressure);
title('Simulated Pressure Data');
xlabel('Time (s)');
ylabel('Pressure (Pa)');
