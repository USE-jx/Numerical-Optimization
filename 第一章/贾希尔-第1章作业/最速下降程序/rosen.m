function f = rosen(x)
% 计算Rosenbrock函数值
% 输入：优化变量x
% 输出：函数值

f = 100*(x(1)^2 - x(2))^2 + (x(1) - 1)^2;

end