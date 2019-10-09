function[]= Vitessedicho(f,g,x)
plot(x, f(x))
grid on;
ylabel('f(x)');
xlabel('x');
title('graphe de f');

plot(x,g(x))
grid on;
ylabel('g(x)');
xlabel('x');
title('graphe de g');
end