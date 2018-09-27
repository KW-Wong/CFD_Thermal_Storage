function y = write_fstemp(timestep, array)
% ------------------------------------------------------------------------%
% Author: Wong Kin Wing 17-804-733
% Print and write fluid and solid temperature for every timestep
% Input: timestep, fluid temperature, solid temperature
% ------------------------------------------------------------------------%

% -------------------------------Step 1-----------------------------------%
% Open a folder for the new timestep
folderName = num2str(timestep);
mkdir (folderName)
cd (folderName)
fileID = fopen('coordinate.txt','w');
fprintf(fileID,'%6.2f %12.8f %12.8f %12.8f\n',[1, 2, 3]);
fclose(fileID);
% --------------------------End of Step 1---------------------------------%

% -------------------------------Step N-----------------------------------%
% Write the fluid temperature in a sepearate file
fileID = fopen('fluid_temp.txt','w');
fprintf(fileID,'%6.2f %12.8f %12.8f %12.8f\n',array);
fclose(fileID);
% End of writing

% Write the solid temperature in a sepearate file
fileID = fopen('solid_temp.txt','w');
fprintf(fileID,'%6.2f %12.8f %12.8f %12.8f\n',array);
fclose(fileID);
% End of writing


% --------------------------End of Step N---------------------------------%
cd .. % back to the main project dir
end