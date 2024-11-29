time = 0:0.1:1000;
vibration = sin(0.2*time) + 0.05*randn(size(time));
temperature = 50 + 10*sin(0.05*time) + 0.5*randn(size(time));
pressure = 100 + 5*sin(0.1*time) + 0.2*randn(size(time));

% Plotting the data
subplot(3,1,1); plot(time, vibration);
subplot(3,1,2); plot(time, temperature);
subplot(3,1,3); plot(time, pressure);
