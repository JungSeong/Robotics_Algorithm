clear all

Nsamples = 500;
Xsaved   = zeros(Nsamples, 1);
Xmsaved  = zeros(Nsamples, 1);


for k=1:Nsamples
  xm = GetSonar(); % call GetSonar.m function
  x  = MovAvgFilter(xm);
  
  Xsaved(k)  = x;
  Xmsaved(k) = xm;
end


dt = 0.02;
t  = 0:dt:Nsamples*dt-dt;

figure
hold on
plot(t, Xmsaved, 'r.');
plot(t, Xsaved, 'b');
xlabel('Time [sec]');
ylabel('Altitude [m]');
legend('Measured', 'Moving average')
