import time
import sys

str = "\|/-"
s = "#"
while True:
    for i in range(len(str)):
            sys.stdout.write("[")
            sys.stdout.write(str[i])
            sys.stdout.flush()
            sys.stdout.write("]")
            sys.stdout.write(s)
            sys.stdout.write("\r")
            time.sleep(0.1)
            s = s + "#"

