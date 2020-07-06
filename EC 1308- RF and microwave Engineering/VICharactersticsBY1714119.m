%An IMPATT diode generally behaves as a normal pn junction diode
%It's v-i characterstic on DC voltage application would be same as to that
% of pn junction diode

% v-i charecterstic on DC voltage source
% considering silicon based diode

clc;
%Id=Is*(exp(Vd/n*Vt)-1)
%known Parameters
q = 1.6022e-19   ; % Electron Charge in cloumb (C)
C =  input("Enter temperature in celcius ") ;         %Temparature in °C
T=273+C      ;   %Absolute temparature in Kelvin (273+°C)
k=1.3806e-23  ;  %Boltzmann's Constant in J/K
Is= input("Enter Reverse breakdown saturation current ")    ;  %Leakage Current in Amps
Vz = input("Enter the Breakdown Voltage ");
V=-10:0.01:10 ;  %Applied Voltage across Diode
n=1   ;          %emission coefficient or ideality factor (varies 1 to 2)
%Calculations
Vt=(k*T)/q      ;        %Thermal Voltage in Volts
% disp(V);
%Shockley Diode Equation
% Id=Is*((exp(V/(n*Vt)))-1)  ; %Diode Current
% disp(Id);
Id = -10:0.01:10;
for  i = 1:2001
   % disp(i)
    if V(1,i)>-1*Vz
        Id(1,i) = Is*((exp(V(1,i)/(n*Vt)))-1);
    else
        Id(1,i) = -2001+i;
    end
end

%Graph plotting
plot(V,Id,'color','black')
grid minor
axis on
title('V-T Characteristics')
xlabel(' Voltage ')
ylabel(' Current ')
xlim([-5 5]);
ylim([-5 5]);
axh = gca; % use current axes
color = 'blue'; % black, or [0 0 0]
linestyle = ':'; % dotted
line(get(axh,'XLim'), [0 0], 'Color', color, 'LineStyle', linestyle);
line([0 0], get(axh,'YLim'), 'Color', color, 'LineStyle', linestyle);





