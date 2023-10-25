function V = RLC_DEm(t,Y,R,L,C,Uin,kappa)
%RLC_DEM
%    V = RLC_DEM(T,Y,R,L,C,UIN,KAPPA)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    12-Dec-2020 10:36:13

t2 = Y(1);
t3 = Y(2);
V = [t3;-(-Uin+t2+kappa.*t2.^3+C.*R.*t3)./(C.*L)];