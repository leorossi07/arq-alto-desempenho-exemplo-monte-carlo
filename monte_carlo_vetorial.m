tic(); % Inicia a contagem do tempo

N = 5000; % Número de pontos
rand_x = 2 * rand(1, N) - 1; 
rand_y = 2 * rand(1, N) - 1;

dist = rand_x.^2 + rand_y.^2; 

p_circulos = sum(dist <= 1); 
p_quadrados = N; 

pi_estimate = 4 * (p_circulos / p_quadrados);

disp(['Pi estimation = ', num2str(pi_estimate)]);

time_vectorized = toc(); 
disp(['tempo do vetorial: ', num2str(time_vectorized), ' segundos']);
