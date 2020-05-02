#inizlize
clear;close all;clc;
#load data
Data=csvread('heart.csv');
x=Data(:,1:13);
y=Data(:,14);
#plot the data
plotData(x,y);
legend('admitted','not admitted');
xlabel('age');
ylabel('cp');
#compute the cost and gradient
[m,n]=size(x);
initialtheta=zeros((n+1),1);
[j,grad]=computecost(initialtheta,x,y);
#run the function optimization algorithm
options=optimset('Gradobj','on','MaxIter',400);
theta=fminunc(@(t)computecost(t,x,y),initialtheta,options);
#check the accuracy of the predictions
predictions = predict(theta,x);
accuracy = mean(double(predictions == y)*100);