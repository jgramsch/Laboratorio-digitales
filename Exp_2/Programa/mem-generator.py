from scipy import signal
import matplotlib.pyplot  as plt
triangular_window = signal.triang(125)

plt.plot(triangular_window)
plt.title("Triangular window")
plt.ylabel("Amplitude")
plt.xlabel("Sample")
plt.show()
