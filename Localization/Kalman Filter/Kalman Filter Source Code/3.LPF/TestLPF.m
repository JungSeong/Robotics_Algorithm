clear all

Nsamples = 500;
alpha = 0.7;
Xsaved   = zeros(Nsamples, 1);
X_2saved = zeros(Nsamples, 1);
Xmsaved  = zeros(Nsamples, 1);


for k=1:Nsamples
  xm = GetSonar();
  x  = LPF(xm, 0.4);
  x_2 = LPF(xm, 0.9);
  
  Xsaved(k)  = x;
  X_2saved(k) = x_2;
  Xmsaved(k) = xm;
end

dt = 0.02;
t  = 0:dt:Nsamples*dt-dt;

figure
hold on
plot(t, Xmsaved, 'r.');
plot(t, Xsaved, 'b');
plot(t, X_2saved, '--');
xlabel('Time [sec]');
ylabel('Altitude [m]');
legend('Measured', 'alpha = 0.4', 'alpha = 0.9')
