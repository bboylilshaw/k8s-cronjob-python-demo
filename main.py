import os
from dotenv import load_dotenv


def print_hi():
    load_dotenv()
    name = os.environ["USER"]
    print(f'Hi, {name}')


if __name__ == '__main__':
    print_hi()
