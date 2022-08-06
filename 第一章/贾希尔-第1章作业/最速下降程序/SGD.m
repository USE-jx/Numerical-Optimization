function [x,iter] = SGD(x0);
% 通过最速下降法求出最优变量和迭代次数
% 输入：优化变量初值
% 输出：优化后的变量和迭代次数

%创建两个函数的句柄
F = @rosen;
G = @Gradient;


c = 1e-3;  %参数c
iter = 0; %迭代次数
e = 1e-5; %精度
a = 1;    %初始步长

x_current = x0;
x_new =[];

g = G(x_current);


while(norm(g) > e)
    d = -g; %搜索方向
    % Armijo条件
    while(F(x_current + a*d) > F(x_current) + c*a*d'*g)
        a = a/2; 
        disp(a);
    end
    
    x_new = x_current + a*d;

    plot([x_current(1) x_new(1)],[x_current(2) x_new(2)],"ro-")
    %refresh
    x_current = x_new;
    g = G(x_current);
    iter = iter + 1; 

end
x = x_current;

end