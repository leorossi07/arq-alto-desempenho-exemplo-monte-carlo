tic(); % Inicia a contagem do tempo

p_circulos = 0;
p_quadrados = 0;

for i=1:5000
    rand_x = 2 * rand() - 1;
    rand_y = 2 * rand() - 1;
    
    dist = rand_x^2 + rand_y^2;
    
    if dist <= 1
        p_circulos += 1;
    endif
    
    p_quadrados += 1;
endfor

pi = 4 * (p_circulos / p_quadrados);

printf("Pi estimation = %f\n", pi);

time_serial = toc(); % Finaliza a contagem do tempo e armazena o tempo decorrido
disp(['tempo do serial: ', num2str(time_serial), ' segundos']);




