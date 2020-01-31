clear all      %% for group 1 for other groups go from /1/ : /20/ this is for the time window setting of [0,8] for other time window change {0,8}
S=zeros(20, 20);
Surrogated=xlsread("C:/Users/sarina/Desktop/intervals/13/{0,2}4.xlsx","A1:ALL359") %%surrogated intervals based time series of the answer
Original=xlsread("C:/Users/sarina/Desktop/intervals/13/{0,2}4.xlsx","ALR1:ALR359") %%original time series of the answer

S1 = zeros (1, 1000);

for i=1:1000
    vector=Surrogated(:,i);
    Sum= sum(vector);
    S1(1,i)=Sum;
end
Mu=mean(S1);
Original_Co_occur=sum(Original);
sigma=std(S1);
zvalue=(Original_Co_occur-Mu)/sigma
S(1,1)=Original_Co_occur;
S(1,6)=Mu;
S(1,11)=sigma;
S(1,16)=zvalue;
