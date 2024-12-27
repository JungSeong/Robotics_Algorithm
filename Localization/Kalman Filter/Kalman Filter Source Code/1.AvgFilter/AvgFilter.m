function avg = AvgFilter(x)
%
% persistent : C/C++의 정적 변수와 같이 함수 호출이 끝난 이후에도 값을 유지한다.
persistent prevAvg k 
persistent firstRun


if isempty(firstRun)
  k = 1;
  prevAvg = 0;
  
  firstRun = 1;  
end


alpha = (k - 1) / k;
avg   = alpha*prevAvg + (1 - alpha)*x;

prevAvg = avg;
k       = k + 1;