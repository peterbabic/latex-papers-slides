disp('Welcome to car brake pressure fuzzy control.');
disp(' ');
temp = input('Please insert brake temperature in °C: ');
speed = input('Please insert car speed in km/h: ');
fis_brake = readfis('car_brake.fis');
press = evalfis([temp speed], fis_brake);
out = sprintf('The brake pressure shoud be adjusted by %2.2f bar.', press);
disp(out);