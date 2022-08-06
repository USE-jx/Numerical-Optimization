%%%  求梯度表达式

%初始化操作
clc;
clear;
close all;

%令N=2,则优化变量x1 x2,目标函数F为
syms x1 x2 F ;
F = 100*(x1^2 - x2)^2 + (x1 - 1)^2;


d = gradient(F);

