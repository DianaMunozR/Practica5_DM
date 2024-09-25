function dx = RLC(t,x)
    % Definición de los parámetros
    C = 0.1e-6;
    R = 100;
    L = 8e-3;

    frecuencia = 500; % Frecuencia en Hz
    ciclo_de_trabajo = 50; % Ciclo de trabajo en porcentaje (%)

    %----------------Generar la onda cuadrada manualmente----------------%
    % Alternativa a la función square si no tienes la Signal Processing Toolbox
    periodo = 1 / frecuencia;  % Periodo de la onda cuadrada
    t_mod = mod(t, periodo);   % Tiempo modulado por el periodo
    if t_mod < ciclo_de_trabajo / 100 * periodo
        V = 3;  % Amplitud durante el ciclo de trabajo
    else
        V = 0;  % Amplitud fuera del ciclo de trabajo
    end

    
    
    % Representar los estados del sistema
    dx = zeros(2,1);
    
    % Definición de la dinámica del sistema
    dx(1) = x(2);
    dx(2) = (1/L)*(V - R*x(2) - (1/C)*x(1));
end