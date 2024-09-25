[t,x] = ode45(@RLC, [0 0.01], [0 0]);
figure;
plot(t, x(:,1), 'm', 'LineWidth', 1.5);
grid on
title("Voltaje del capacitor");
xlabel("Tiempo (s)");
ylabel("Voltaje (V)");
