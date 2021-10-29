% For Octave 
% Use pkg install -forge fuzzy-logic-toolkit
% to install the package.
% and load it using the below line
pkg load fuzzy-logic-toolkit
% The above line is not required in MATLAB

x=(0.0:.2:10.0)

y= [trimf(x, [1 3 5]),% Triangular membership function
    trapmf(x, [1 3 5 7]),% Trapezoidal membership function
    gbellmf(x, [1 3 5])] % Bell-shaped membership function 

for i = 1:3
    subplot(3,1,i)
    plot(x, y(i,:) )
end
