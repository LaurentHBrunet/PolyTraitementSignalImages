%Exercice I
%1
t = linspace(-4,4,1000);
signal = zeros(1000,1);
for i = 1:1000
    val = sin(pi*t(i))/(pi*t(i));
    signal(i)=val;
end
figure(1);
plot(t,signal);
hold on;
xlabel('t');
ylabel('s(t)');
title('Figure 1');
legend('Q1-Sinus cardinal');
hold off;

%----------------------------------------------------------
%2

t = linspace(-2,2,500);
s1 = zeros(500,1);
s2 = zeros(500,1);
s3 = zeros(500,1);
for i = 1:500
    s1(i) = sin(t(i));
    s2(i) = sin(3*t(i))/3;
    s3(i) = sin(5*t(i))/5;
end
figure(2)
hold on;
plot(t,s1);
plot(t,s2);
plot(t,s3);
legend('s1','s2','s3');
xlabel('t');
ylabel('s(t)');
title('figure 2');
hold off;

%----------------------------------------------------------
%3
t = linspace(-2,2,500);
s1 = zeros(500,1);
s2 = zeros(500,1);
s3 = zeros(500,1);
stotal = zeros(500,1);
for i = 1:500
    s1(i) = sin(t(i));
    s2(i) = sin(3*t(i))/3;
    s3(i) = sin(5*t(i))/5;
    stotal(i) = s1(i) + s2(i) + s3(i);
end
figure(3)
hold on;
plot(t,s1,'--');
plot(t,s2,'--');
plot(t,s3,'--');
plot(t,stotal,'LineWidth',2);
legend('s1','s2','s3','sTotal');
xlabel('t');
ylabel('s(t)');
title('figure 3');
hold off;

%----------------------------------------------------------
%4
%j allant de 0 a 50
t = linspace(-2,2,500);
signal = zeros(500,1);
for i = 1:500
    sommeInterne = 0;
    for j = 1:50
        sommeInterne = sommeInterne + sin((2*j+1)*t(i))/(2*t(i)+1);
    end
    signal(i) = 0.5 + (2/pi)*sommeInterne;
end
figure(4)
hold on;
plot(t,signal);
legend('signal');
xlabel('t');
ylabel('s(t)');
title('figure 4');
hold off;

%j allant de 0 a 500
t = linspace(-2,2,500);
signal = zeros(500,1);
for i = 1:500
    sommeInterne = 0;
    for j = 1:500
        sommeInterne = sommeInterne + sin((2*j+1)*t(i))/(2*t(i)+1);
    end
    signal(i) = 0.5 + (2/pi)*sommeInterne;
end
figure(5)
hold on;
plot(t,signal);
legend('signal');
xlabel('t');
ylabel('s(t)');
title('figure 5');
hold off;

%----------------------------------------------------------

%Exercice II
%1
%TODO

%----------------------------------------------------------
%2
t20 = linspace(0,1,20);
t75 = linspace(0,1,75);
t100 = linspace(0,1,100);
t160 = linspace(0,1,160);
t180 = linspace(0,1,180);
t330 = linspace(0,1,330);

s20 = zeros(20,1);
s75 = zeros(75,1);
s100 = zeros(100,1);
s160 = zeros(160,1);
s180 = zeros(180,1);
s330 = zeros(330,1);

for i = 1:20
   s20(i) = 2*sin(165*pi*t20(i)) + 13 * cos(6*pi*t20(i)) - 3 * cos(80*pi*t20(i));
end

for i = 1:75
   s75(i) = 2*sin(165*pi*t75(i)) + 13 * cos(6*pi*t75(i)) - 3 * cos(80*pi*t75(i));
end

for i = 1:100
   s100(i) = 2*sin(165*pi*t100(i)) + 13 * cos(6*pi*t100(i)) - 3 * cos(80*pi*t100(i));
end

for i = 1:160
   s160(i) = 2*sin(165*pi*t160(i)) + 13 * cos(6*pi*t160(i)) - 3 * cos(80*pi*t160(i));
end

for i = 1:180
   s180(i) = 2*sin(165*pi*t180(i)) + 13 * cos(6*pi*t180(i)) - 3 * cos(80*pi*t180(i));
end

for i = 1:330
   s330(i) = 2*sin(165*pi*t330(i)) + 13 * cos(6*pi*t330(i)) - 3 * cos(80*pi*t330(i));
end

figure(6)
hold on;
subplot(7,1,2);
plot(t20,s20);
xlabel('t');
ylabel('s(t)');
suptitle('figure 6');
subplot(7,1,3);
plot(t75,s75);
xlabel('t');
ylabel('s(t)');

subplot(7,1,4);
plot(t100,s100);
xlabel('t');
ylabel('s(t)');

subplot(7,1,5);
plot(t160,s160);
xlabel('t');
ylabel('s(t)');

subplot(7,1,6);
plot(t180,s180);
xlabel('t');
ylabel('s(t)');

subplot(7,1,7);
plot(t330,s330);
xlabel('t');
ylabel('s(t)');
hold off;

