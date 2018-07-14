clc
clear all
S=input('enter the power');
Vhv=input('enter high voltage');
Vlv=input('enter low voltage');
Voc=input('open circuit voltage');
Ioc=input('open circuit current');
Pc=input('open circuit loss');
Vsc=input('short circuit voltage');
Isc=input('short circuit current');
Pcu=input('short circuit loss');
Iratedlv=S/Vlv;
Iratedhv=S/Vhv;
if Voc==Vlv
    Yoc=Ioc/Voc;
    Rc=Voc^2/Pc;
    disp('Rc=');
    disp(Rc);
    Ic=Voc/Rc;
    Im=(Ioc^2-Ic^2)^(1/2);
    Xm=Voc/Im;
    disp('Xm=');
    disp(Xm);
else
    Yoc=Ioc/Voc;
    Rc=Voc^2/Pc;
    disp('Rc=');
    disp(Rc);
    Ic=Voc/Rc;
    Im=(Ioc^2-Ic^2)^(1/2);
    Xm=Voc/Im;
    disp('Xm=');
    disp(Xm);
end
if Isc==Iratedhv
    Zsc=Vsc/Isc;
    Req=Pcu/(Isc^2);
    R1=Req/2;
    R2=(Req/2)*((Vlv/Vhv)^2);
    disp('R1=');
    disp(R1);
    disp ('R2=');
    disp(R2);
    Xeq=((Zsc^2)-(Req^2))^(1/2);
    X1=Xeq/2;
    X2=(Xeq/2)*((Vlv/Vhv)^2);
    disp('X1=');
    disp(X1);
    disp('X2=');
    disp(X2);
else
    Pcu=(Iratedhv/Isc)^2*Pcu;
    Zsc=Vsc/Isc;
    Req=Pcu/(Isc^2);
    R1=Req/2;
    R2=(Req/2)*((Vlv/Vhv)^2);
    disp('R1=');
    disp(R1);
    disp ('R2=');
    disp(R2);
    Xeq=((Zsc^2)-(Req^2))^(1/2);
    X1=Xeq/2;
    X2=(Xeq/2)*((Vlv/Vhv)^2);
    disp('X1=');
    disp(X1);
    disp('X2=');
    disp(X2);
end