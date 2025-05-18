%% Script is used to create the different graphs for data collected from the simscape
% Inputing variables for the simulation
% Run simualtion
sim('EVT_Cooling_Model.slx');

%% Reading tables of collected data
% Tempurature data
A = readtable('Good_Flow_data');

%% Creating target values for plotting
set_time = linspace(0,3000,300);    % Time vector used for variables created in this section
% Measured Flowrate

%% Plotting
% Temp Graph (water temp)
figure("Water Temp")
plot()
legend()
grid on
xlabel("Time [s]")
ylabel("Deg [/degree C]")

% Airspeed, and Flowrate Graphs
figure("Airspeed and Flowrate")
% Airspeed
subplot(2,1,1)
plot()
legend("Calculated Data","Simscape Data")
grid on
xlabel("Time [s]")
ylabel("Speed")
% Flowrate
subplot(2,1,2)
plot()
legend("Calculated Data","Simscape Data")
grid on
xlabel("Time [s]")
ylabel("Flowrate")