
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Grab data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
Array1= csvread('data.csv');
Array2 = csvread('average_value_data.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Get excel colums %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1 = Array1(:,1);
y1 = Array1(:,2);
x2 = Array2(:,1);
y2 = Array2(:,2);
x3 = Array2(:,1);
y3 = Array2(:,2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Make Two Dimensional data plots %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
scatter(x1,y1,'+'); hold on;
xlabel('k', 'Interpreter', 'Latex', 'FontSize', 12, 'Color', 'k')
label_yside = '$$C(2k,2k+1)=T^{\varphi(2k,2k+1)}(2k)$$'
ylabel(label_yside, 'Interpreter', 'Latex','FontSize', 12, 'Color', 'k')
ylim([0,3000000]);
%title('Collatz Trajectories')
% Add the string containing the Latex expression to the plot
% This needs to be adjusted upon plot creation as a best fit algo 
%text(0.55, 240, 'Interpreter', 'Latex', 'FontSize', 12, 'Color', 'k')                                                                                                                                                     
figure(2)
scatter(x2,y2,'+'); hold on;
plot(x2,y3); hold on;
xlabel('k','Interpreter', 'Latex', 'FontSize', 12, 'Color', 'k')
label_yside = '$$\varsigma(k)$$'
ylabel(label_yside,'Interpreter', 'Latex', 'FontSize', 12, 'Color', 'k')
%title('A Plot of the Collatz Trajectories')
%title('Avergae')
% Add the string containing the Latex expression to the plot
% This needs to be adjusted upon plot creation as a best fit algo 
%text(0.55, -70 'Interpreter', 'Latex', 'FontSize', 12, 'Color', 'k')
%figure(3)
%A = [100,1000,10000,100000]
%B = [5.49,7.38,22.969, 338.165]
%plot(A,B, 'k','LineWidth',3)
%xlabel('n')
%ylabel('Time (ms)')
%title('Time Complexity')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Algo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%