from colorama import Fore, Style
import time

def animate_text(text, repeat=5):
    colors = [Fore.WHITE, Fore.RED, Fore.BLUE, Fore.G>
    for _ in range(repeat):
        for i, char in enumerate(text):
            color = colors[i % len(colors)]  # Cycle >
            print(color + char, end='', flush=True)
            time.sleep(0.1)  # Adjust the sleep time >
        print(Style.RESET_ALL)  # Reset color to defa>

text = "Radha Krishna"
animate_text(text, repeat=100)
