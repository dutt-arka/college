%pretty lame code
%extrinsic carrier conc
t=0:10:2000;
na=10e16;
nd=10e14;
eion=0.05;
a=((na*nd)^0.5./(300)^1.5);
b=((eion)./(2*0.026*t));
na=(a.*(t.^1.5).*exp(-b));
semilogy(t,na,'g');
xlabel('Extrinsic Carrier Conc.');
ylabel('Temperature');
title('Extrinsic Carrier conc v/s Temp');
hold on;
