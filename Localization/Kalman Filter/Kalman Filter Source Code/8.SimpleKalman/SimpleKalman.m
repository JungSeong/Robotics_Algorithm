function volt = SimpleKalman(z)
%
%
persistent A H Q R 
persistent x P
persistent firstRun


if isempty(firstRun)
  A = 1;
  H = 1;
  
  Q = 0;
  R = 4;

  x = 14;
  P =  6;
  
  firstRun = 1;  
end

  
xp = A*x; % I. 추정값의 예측값 계산
Pp = A*P*A' + Q; % 오차 공분산의 예측값 계산

K = Pp*H'*inv(H*Pp*H' + R); % II. 칼만 이득 계산

x = xp + K*(z - H*xp); % III. 추정값 계산
P = Pp - K*H*Pp; % IV. 오차 공분산 계산


volt = x;