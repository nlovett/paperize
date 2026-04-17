import argparse


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--message", "-m", default="Hello from paperize!")
    args = parser.parse_args()
    print(args.message)


if __name__ == "__main__":
    main()
