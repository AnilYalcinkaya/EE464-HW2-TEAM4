clear

Np = 2;
Ns = 10;

Vin = 12;
Vout = 48;
Pout = 96;

Iin = Pout/Vin;

J=4;

%Choosing 28AWG
a_cable = 0.08;

cross_section_pri = Iin/J;

Num_of_conductor_pri = ceil(cross_section_pri/a_cable);


%%sec

Iout=Pout/Vout;
cross_section_sec = Iout/J;
Num_of_conductor_sec = ceil(cross_section_sec/a_cable);


fill_factor = (Np*Num_of_conductor_pri*a_cable+2*Ns*Num_of_conductor_sec*a_cable)/42.92;

%resistivity
fill_for_pri = (Np*Num_of_conductor_pri*a_cable)/42.92;
last_r_for_pri = (27.2-12.4)*fill_for_pri+12.4;
last_r_for_sec = (27.2-last_r_for_pri)*fill_factor+last_r_for_pri;
resistivity = 2.12872e-4;

mean_len_pri = ((last_r_for_pri-12.4)/2)*2*pi;
mean_len_sec = ((last_r_for_sec-last_r_for_pri)/2)*pi;
Rpri = mean_len_pri*Np*resistivity/Num_of_conductor_pri;
Rsec = mean_len_sec*Ns*resistivity/Num_of_conductor_sec;
