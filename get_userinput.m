function [height, diameter, nCell init_temp] = get_userinput()
% ------------------------------------------------------------------------%
% Author: Wong Kin Wing 17-804-733
% Get the input from users for the height and storage of the storage, the
% number of grid cells and the initial temperature of the fluid and solid
% phases
%
% Please type the following in the command line to use the function,
% [height, diameter, nCell init_temp] = get_userinput()
% ------------------------------------------------------------------------%

prompt = 'Please input the height of the thermal storage? [in m] ';
height = input(prompt);
prompt = 'Please input the diameter of the thermal storage? [in m] ';
diameter = input(prompt);
prompt = 'Please input the number of cell considered in the simulation';
nCell = input(prompt);
prompt = 'Please input the inital temperature for both fluid and solid phase';
init_temp = input(prompt);

end