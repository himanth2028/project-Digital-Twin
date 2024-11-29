% Open the Simulink model
open_system('DigitalTwin_Model');

% Set simulation parameters
set_param('DigitalTwin_Model', 'Solver', 'ode45', 'StopTime', '100');

% Run the Simulink model
simOut = sim('DigitalTwin_Model');

% Extract sensor data
vibrationData = simOut.get('vibration');  % Simulated vibration data
temperatureData = simOut.get('temperature');  % Simulated temperature data
