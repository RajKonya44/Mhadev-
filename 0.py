from colorama import Fore, Style
import time

def animate_text(text, repeat=5):
    colors = [Fore.WHITE, Fore.RED, Fore.BLUE, Fore.GREEN]  # Fixe>
    for _ in range(repeat):
        for i, char in enumerate(text):
            color = colors[i % len(colors)]  
            print(color + char, end='', flush=True)
            time.sleep(0.1)  
        print(Style.RESET_ALL)  

text = "Radha Krishna"
animate_text(text, repeat=100)
