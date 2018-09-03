from scipy import signal
import numpy as np
import itertools
import matplotlib.pyplot  as plt
#declaracion de señales -triangular
triangular_window_a = signal.triang(128)
triangular_window_b = [-x for x in triangular_window_a]
triangular_window = np.concatenate((triangular_window_a,triangular_window_b))
triangular_window = [int(x*125+125) for x in triangular_window]
print(len(triangular_window))
plt.plot(triangular_window)
plt.title("Triangular window")
plt.ylabel("Amplitude")
plt.xlabel("Sample")
plt.show()
#declaracion de señales -cuadrada
square_window_a = [0 for x in range(128)]
square_window_b = [255 for x in range(128)]
square_window = square_window_a + square_window_b
print(len(square_window))
plt.plot(square_window)
plt.title("square window")
plt.ylabel("Amplitude")
plt.xlabel("Sample")
plt.show()
#declaracion de señales -seno
sin_window = [int(256*(np.sin((x*2*np.pi)/256))) for x in range(256)]
print(len(sin_window))
plt.plot(sin_window)
plt.title("sin window")
plt.ylabel("Amplitude")
plt.xlabel("Sample")
plt.show()

