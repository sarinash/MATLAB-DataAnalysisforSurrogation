%% permuted data for trial one and group one for other change /1/trialone 
clear all
clc
S=zeros(5, 4);
SH=zeros(5, 4);
% Settings 
nPerm = 1000;
vIdea_IOC1 = xlsread("C:/Users/sarina/Desktop/data-availibility/11/trialtwo.xlsx","K2:K30");
perms_ioc1 = zeros(length(vIdea_IOC1), nPerm);
nIdeas1 = length(vIdea_IOC1);
% generate 
for j=1:nPerm
    perms_ioc1(:, j) = vIdea_IOC1(randperm(length(vIdea_IOC1)));
end
vIdea_cooccurHMS1 = zeros(nIdeas1, 1);
vIdea_cooccurHMS1 = xlsread("C:/Users/sarina/DesKtop/data-availibility/11/trialtwo.xlsx","F2:F30")

% Calculation of relationship index
% simulataneous index
ind_cooccur_IOC1 = sum(vIdea_IOC1 .* vIdea_cooccurHMS1);
perms_ind_cooccur_IOC1 = zeros(1, nPerm);
for j=1:nPerm
    perms_ind_cooccur_IOC1(1, j) = sum(perms_ioc1(:, j) .* vIdea_cooccurHMS1);
end

% mean and SD of permutation-based index
mu1 = mean(perms_ind_cooccur_IOC1);
sigma1 = std(perms_ind_cooccur_IOC1); 
p1 = 1 - normcdf(ind_cooccur_IOC1, mu1, sigma1)
S(1,1)=ind_cooccur_IOC1;
S(1,2)=mu1;
S(1,3)=sigma1;
S(1,4)=p1;

% HMS time-shifted one step after (hypothesis: HMS predicts convergence (cooperation) in the next indea generation.
vIdea_cooccurHMS1_shifted = [0; vIdea_cooccurHMS1(1:(end-1))];
ind_cooccur_IOC1_shifted = sum(vIdea_IOC1 .* vIdea_cooccurHMS1_shifted) ;
perms_ind_cooccur_shifted_IOC1 = zeros(1, nPerm);
for j=1:nPerm
    perms_ind_cooccur_shifted_IOC1(1, j) = sum(perms_ioc1(:, j) .* vIdea_cooccurHMS1_shifted);
end

% mean and SD of permutation-based index
mu1_shifted = mean(perms_ind_cooccur_shifted_IOC1);
sigma1_shifted = std(perms_ind_cooccur_shifted_IOC1); 
p1_shifted = 1 - normcdf(ind_cooccur_IOC1_shifted, mu1_shifted, sigma1_shifted)
SH(1,1)=ind_cooccur_IOC1_shifted;
SH(1,2)=mu1_shifted;
SH(1,3)=sigma1_shifted;
SH(1,4)=p1_shifted;