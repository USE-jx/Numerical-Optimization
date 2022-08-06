%% 初始化操作
clc;
clear;
close all;

%%设定初值
x0 = [3;1.5];

figure('Name',"迭代下降图");
%画出Rosenbrock函数的等高线图
f = @(x1,x2) 100*(x1^2 - x2)^2 + (x1 - 1)^2;
fcontour(f,[-3 3],"Fill","on");
hold on;
%%调用SGD函数
[x,iter] = SGD(x0);