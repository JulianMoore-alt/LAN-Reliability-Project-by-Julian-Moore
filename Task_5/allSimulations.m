%this program runs the simulation from each requirement from the assignment
%on the table. the probabilities are also ordered in the same way as they
%are on the table. They are each on separate figures. 
figure(1)
One(0.10, 0.60, 0.01)
Five(0.10, 0.60, 0.01)
Ten(0.10, 0.60, 0.01)
xlabel("chance of failure") % Label x-axis as 'chance of failure'.
ylabel("Transmitted Packets") % Label y-axis as 'Transmitted Packets'.

figure(2)
One(0.60, 0.10, 0.01)
Five(0.60, 0.10, 0.01)
Ten(0.60, 0.10, 0.01)
xlabel("chance of failure") % Label x-axis as 'chance of failure'.
ylabel("Transmitted Packets") % Label y-axis as 'Transmitted Packets'.

figure(3)
OneFigure3_4(0.10, 0.01, 0.60)
FiveFigure3_4(0.10, 0.01, 0.60)
TenFigure3_4(0.10, 0.01, 0.60)
xlabel("chance of failure") % Label x-axis as 'chance of failure'.
ylabel("Transmitted Packets") % Label y-axis as 'Transmitted Packets'.

figure(4)
OneFigure3_4(0.60, 0.01, 0.10)
FiveFigure3_4(0.60, 0.01, 0.10)
TenFigure3_4(0.60, 0.01, 0.10)
xlabel("chance of failure") % Label x-axis as 'chance of failure'.
ylabel("Transmitted Packets") % Label y-axis as 'Transmitted Packets'.


figure(5)
OneFigure5_6(0.01, 0.10, 0.60)
FiveFigure5_6(0.01, 0.10, 0.60)
TenFigure5_6(0.01, 0.10, 0.60)
xlabel("chance of failure") % Label x-axis as 'chance of failure'.
ylabel("Transmitted Packets") % Label y-axis as 'Transmitted Packets'.

figure(6)
OneFigure5_6(0.01, 0.60, 0.10)
FiveFigure5_6(0.01, 0.60, 0.10)
TenFigure5_6(0.01, 0.60, 0.10)
xlabel("chance of failure") % Label x-axis as 'chance of failure'.
ylabel("Transmitted Packets") % Label y-axis as 'Transmitted Packets'.


