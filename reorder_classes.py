import sys
import os
import argparse
from sys import argv

def print_trans_str(trans_str):
    for i in range(len(trans_str)):
        print(f"{i} --> {trans_str[i]}")

def transform_label(trans_str, label):
    # for i in range(len(trans_str)):
    #     if label == trans_str[i]:
    #         return str(i)
    return trans_str[int(label)]

def transform_file(filename, trans_str):
    """
    reorders classes in a file
    """

    f = open(filename, 'r')
    lines = f.readlines()

    out_lines = []

    for line in lines:
        line = list(line)
        line[0] = transform_label(trans_str, line[0])
        line = "".join(line)
        out_lines.append(line)
    f.close()

    f = open(filename, 'w')
    for line in out_lines:
        f.write(line)
    f.close()

def transform_folder(path, trans_str, recursive=False):
    """
    calls transform_file function on all files in a folder
    """
    if path[-1] == '/':
        path = path[:-1]

    if not recursive:
        for file in os.listdir(path):
            if '.txt' in file:
                filename = f"./{path}/{file}"
                print(filename)
                transform_file(filename, trans_str)
    else:
        for r, d, f in os.walk(path):
            for file in f:
                if '.txt' in file:
                    if len(d) == 0:
                        filename = f"./{path}/{file}"
                    else:
                        filename = f"./{path}/{'/'.join(d)}/{file}"
                    print(filename)
                    transform_file(filename, trans_str)



if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument("-r", "--recursive", \
            help="reorders classes in all txt files in all folders",
            action="store_true")
    parser.add_argument("path")
    parser.add_argument("trans_str")
    args = parser.parse_args()
    print_trans_str(args.trans_str)
    print("Are you sure, that you want to reorder classes in this way? (yes)")
    confirm = input("yes/no: ")

    

    if confirm == "yes":
        transform_folder(args.path, args.trans_str, args.recursive)
    else:
        print("exiting")
