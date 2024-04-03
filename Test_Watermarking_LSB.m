clear all;close all;clc;

start_time=cputime;
lsb_embed;
elapsed_time1=cputime-start_time;
fprintf('Embedding time : %.2f\n', elapsed_time1);
start_time=cputime;
lsb_recover;
% display processing time
elapsed_time2=cputime-start_time;
%disp('Le psnr ', psnr);
fprintf('Extracting time : %.2f\n', elapsed_time2);
fprintf('PSNR :  %.4f\n', psnr);