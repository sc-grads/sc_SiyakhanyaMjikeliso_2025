from datetime import datetime
import time

def show_time():
    now: datetime = datetime.now()
    print(f'Time: {now:%H:%M:%S}')

show_time()