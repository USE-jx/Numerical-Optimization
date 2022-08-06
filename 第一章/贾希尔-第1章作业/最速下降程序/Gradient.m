function g = Gradient(x)
% 计算目标函数的梯度
g1 = 2*x(1) - 400*x(1)*(-x(1)^2 + x(2)) - 2;
g2 = -200*x(1)^2 + 200*x(2);
g = [g1;g2];

end