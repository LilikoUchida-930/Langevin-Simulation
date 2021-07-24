% July 15, 2021 Author: Liliko Uchida
% LANGEVIN SIMULATION: PLOTS

% This script is intended to plot data produced in Langevin_data.py.
% Langevin_data.py produces 2 matrices. 

    % 1. x_data --> an n x N matrix with the x-coordinates for all N cells
    % at every nth timestep dt.
    
    % 2. y_data --> an n x N matrix with the y coordinates for all N cells 
    % at every nth timestep dt. 
    
 % The goal is to plot all N points on the same graph at position
 % (x(t0),y(t0)), (x(t1),y(t1)) ... (x(tn),y(tn)) as a dynamic scatter
 % plot. 



clc; close all; 
x_data = readtable('x_data.csv');       % returns n x N matrix with x-coordinates for all N cells at 
x_data = table2array(x_data);
% all n time steps dt. 
y_data = readtable('y_data.csv');  
y_data = table2array(y_data);% returns n x N matrix with y-coordinates for all N cells at 
                                        % all n time steps dt. 
N = width(x_data);
n = height(x_data);
% t = 1:n:1;
CM = jet(2*101);
figure;
for t = 1:n
    hold on
    p= plot(x_data(t,:),y_data(t,:),'o','linewidth',1,'color',CM(2*t,:));
    set(gca,'Xlim',[0,0.0025],'Ylim',[0,0.0025]);
    title(num2str(t));
    hold off;
    pause(0.1);
%     delete(p);
end

% for i = 1:N:1
%     plot(x_data(t,i),y_data(t,i),'o')
% end
