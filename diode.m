% pn Diode Charecteristics 
R=10.*(10.^3);
V_d=(0:0.05:1.1);
I_s=10.^(-12);
t=298;
n=2;
k=1.38.*(10.^(-23));
q=1.6.*(10.^(-19));
V_t=(k.*t)./q;
a=(V_d)./(n.*V_t);
I_d=I_s.*(exp(a)-1);
V=(0:0.2:10);
V_dc=10;
I=(V_dc-V)./R;
plot(V_d,I_d,V,I);
xlabel('Voltage across diode (V_d)------->')
ylabel('Current through diode (I_d)------->')
title('P-N Junction Forward Bias characteristics')
legend('VI characteristics','Load line')
grid on
