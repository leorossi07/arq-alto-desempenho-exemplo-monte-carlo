import numpy as np
import multiprocessing
import time

def calculo_pi_serial(N):
    np.random.seed()  # Define a semente aleatória para cada processo
    pontos_circulos = 0

    for _ in range(N):
        x = np.random.uniform(-1, 1)
        y = np.random.uniform(-1, 1)
        if x**2 + y**2 <= 1:
            pontos_circulos += 1

    return pontos_circulos

def main():
    N = 5000  # Número de pontos
    num_processos = multiprocessing.cpu_count()  # Número de núcleos de CPU
    pontos_por_processos = [N // num_processos] * num_processos  # Distribui igualmente os pontos para cada processo
    pool = multiprocessing.Pool(processes=num_processos)

    start_time = time.time()

    # Estimação do Pi utilizando multiprocessing
    pontos_circulos_total = sum(pool.map(calculo_pi_serial, pontos_por_processos))
    valor_pi = 4 * (pontos_circulos_total / N)

    end_time = time.time()

    print("Pi:", valor_pi)
    print("Tempo:", end_time - start_time, "segundos")

if __name__ == "__main__":
    main()
