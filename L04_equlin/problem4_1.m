clear all; close all; clc; format long;

A = [6, 1, 2; 5, 7, 1; 8, 9, 0]

[L, U] = myLU(A);
[L1, U1] = lu(A);

A_back = L * U

if [U, L] == [L1, U1]
    disp("zgadza sie");
else
    disp("nie zgadza sie");
end


