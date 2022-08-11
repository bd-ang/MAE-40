%% Exercise 10.2 
% Following an analogous derivation as that in Example 10.4, given one inductor L2 of a precisely
% known inductance, write a code Wheatstone_Inductors.m that quantifies how a Wheatstone bridge may be
% used to measure the inductance of an unknown inductor L5.

syms L2 L5 s V0; R1 = 1e3; R4 = 1e3; R3 = 1e5;
A = [1 -1 -1 0 0 0 0 0; 0 1 0 -1 -1 0 0 0; 0 0 1 1 0 -1 0 0; 0 R1 0 0 0 0 1 0; 0 0 s*L2 0 0 0 0 1; 0 0 0 R3 0 -1 1 0; 0 0 0 0 R4 0 -1 0; 0 0 0 0 0 s*L5 0 -1];
b = [0; 0; 0; V0; V0; 0; 0; 0;];
x = A\b
