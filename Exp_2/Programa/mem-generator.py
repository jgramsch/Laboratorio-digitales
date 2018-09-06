from scipy import signal
import numpy as np
import itertools
#declaracion de señales -triangular
triangular_window_a = signal.triang(128)
triangular_window_b = [-x for x in triangular_window_a]
triangular_window = np.concatenate((triangular_window_a,triangular_window_b))
triangular_window = [int(x*125+125) for x in triangular_window]
print(len(triangular_window))

#declaracion de señales -cuadrada
square_window_a = [0 for x in range(128)]
square_window_b = [255 for x in range(128)]
square_window = square_window_a + square_window_b
print(len(square_window))

#declaracion de señales -seno
sin_window = [int(128*(np.sin((x*2*np.pi)/255)))+128 for x in range(256)]
print(sin_window)


#escritura del archivo para copiar y pegar
with open("mem.txt","w") as f:
    for i in range(256):
        f.write("8b'{:08b}: signal = 24b'{:08b}{:08b}{:08b};\n".format(
            i, triangular_window[i], square_window[i], sin_window[i]))

