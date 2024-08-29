import itertools
import string
import time

print("Hello Learners. I AM password cracker CODED BY THE LAKHAN SINGH")
chars = string.printable

password = "@12"

max_length = 10

start_time = time.time()

for length in range(1, max_length + 1):
    for combination in itertools.product(chars, repeat=length):
        candidate = "".join(combination)
        print("Trying password:", candidate)
        if candidate == password:
            end_time = time.time()
            print(" Password founded:", candidate)
            time_taken = end_time - start_time
            print("Time taken:", time_taken, "seconds")
            raise SystemExit
