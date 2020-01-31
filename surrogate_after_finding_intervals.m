%% For trial One group One change /11/trialfour and /11/result1 for other groups and trials
clear all
clc
HMS = xlsread("C:/Users/sarina/Desktop/data-availibility/11/trialtwo.xlsx","A2:A360"); %% Head-Movement_sync address 
Generated_Idea=xlsread("C:/Users/sarina/Desktop/intervals/11/result2.xlsx","ALM1:BXX359"); %%% 1000 suroogated ideas intervals based  
%%% for the suroogtaed data
format bank
S1 = zeros (359, 1000);
S2 = zeros (359, 1000);
S3 = zeros (359, 1000);
S4 = zeros (359, 1000);
S5 = zeros (359, 1000);
S6 = zeros (359, 1000);
S7 = zeros (359, 1000);
S8 = zeros (359, 1000);
S9 = zeros (359, 1000);
S10 = zeros (359, 1000);
output10 = rollingwindow(HMS, 10 , 2);%%{0,10}
output9 = rollingwindow(HMS, 9 , 2);%%{0,9}
output8 = rollingwindow(HMS, 8 , 2);%%{0,8}
output7 = rollingwindow(HMS, 7 , 2);%%{0,7}
output6 = rollingwindow(HMS, 6 , 2);%%{0,6}
output5 = rollingwindow(HMS, 5 , 2);%%{0,5}
output4 = rollingwindow(HMS, 4 , 2);%%{0,4}
output3 = rollingwindow(HMS, 3 , 2);%%{0,3}
output2 = rollingwindow(HMS, 2 , 2);%%{0,2}
output1 = rollingwindow(HMS, 1 , 2);%%{0,1}
for  i = 1:  1000;   
    Idea=Generated_Idea(:,i);    %% for all the 1000 surrogated based calculating of the product
    Idea=Idea'
    Answers1=(Idea.*output1)';
    Answers2=(Idea.*output2)';
    Answers3=(Idea.*output3)';
    Answers4=(Idea.*output4)';
    Answers5=(Idea.*output5)';
    Answers6=(Idea.*output6)'; 
    Answers7=(Idea.*output7)';
    Answers8=(Idea.*output8)';
    Answers9=(Idea.*output9)';
    Answers10=(Idea.*output10)';     
    S1(:,i)=Answers1;
    S2(:,i)=Answers2;
    S3(:,i)=Answers3;
    S4(:,i)=Answers4;
    S5(:,i)=Answers5;
    S6(:,i)=Answers6;
    S7(:,i)=Answers7;
    S8(:,i)=Answers8;
    S9(:,i)=Answers9;
    S10(:,i)=Answers10;
end
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,10}2.xlsx",S10)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,9}2.xlsx",S9)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,8}2.xlsx",S8)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,7}2.xlsx",S7)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,6}2.xlsx",S6)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,5}2.xlsx",S5)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,4}2.xlsx",S4)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,3}2.xlsx",S3)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,2}2.xlsx",S2)
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,1}2.xlsx",S1)
clear all
HMS = xlsread("C:/Users/sarina/Desktop/data-availibility/11/trialfour.xlsx","A2:A360");%% Head-Movement_sync address
Generated_Idea= xlsread("C:/Users/sarina/Desktop/data-availibility/11/trialfour.xlsx","B2:B360");%% original idea generation times 
output10 = rollingwindow(HMS, 10 , 2);%%{0,10}
output9 = rollingwindow(HMS, 9 , 2);%%{0,9}
output8 = rollingwindow(HMS, 8 , 2);%%{0,8}
output7 = rollingwindow(HMS, 7 , 2);%%{0,7}
output6 = rollingwindow(HMS, 6 , 2);%%{0,6}
output5 = rollingwindow(HMS, 5 , 2);%%{0,5}
output4 = rollingwindow(HMS, 4 , 2);%%{0,4}
output3 = rollingwindow(HMS, 3 , 2);%%{0,3}
output2 = rollingwindow(HMS, 2 , 2);%%{0,2}
output1 = rollingwindow(HMS, 1 , 2);%%{0,1} 

Idea=Generated_Idea'
Answers1=(Idea.*output1);
Answers2=(Idea.*output2);
Answers3=(Idea.*output3);
Answers4=(Idea.*output4);
Answers5=(Idea.*output5);
Answers6=(Idea.*output6); 
Answers7=(Idea.*output7);
Answers8=(Idea.*output8);
Answers9=(Idea.*output9);
Answers10=(Idea.*output10);     
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,10}2.xlsx",Answers10',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,9}2.xlsx",Answers9',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,8}2.xlsx",Answers8',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,7}2.xlsx",Answers7',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,6}2.xlsx",Answers6',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,5}2.xlsx",Answers5',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,4}2.xlsx",Answers4',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,3}2.xlsx",Answers3',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,2}2.xlsx",Answers2',"ALR1:ALR359")
xlswrite("C:/Users/sarina/Desktop/intervals/11/{0,1}2.xlsx",Answers1',"ALR1:ALR359")