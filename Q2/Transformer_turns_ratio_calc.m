%calculated WaAc is 0.5486, I am choosing 0R43225EC from mag inc
clear

Vin = 12;
Vout = 48;
Pout = 96;
Fsw = 100e3;

Bmax=0.12;

Ac= 121e-6;


Np= Vin/(4*Ac*Bmax*Fsw);
Ns=Vout/Vin*Np;
%choose Np=3 Ns=15

Np = 2;
Ns = 10;

Lmag = Np^2*2893*10^-3;%uH
