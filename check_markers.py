"""Count {{A:}} {{D:}} {{T:}} markers and flag stray/nested ones. Usage:
python check_markers.py file1.md file2.md ...
"""
import re
import sys

GOOD = re.compile(r"\{\{([ADT]):([^{}]*)\}\}")


def check(path):
    text = open(path, encoding="utf-8").read()
    found = GOOD.findall(text)
    counts = {k: sum(1 for m in found if m[0] == k) for k in "ADT"}
    stray = len(re.findall(r"\{\{", text)) - len(found)
    flag = "OK" if stray == 0 else "STRAY=%d" % stray
    print("%-16s A=%-3d D=%-3d T=%-3d %s" % (path.split("\\")[-1], counts["A"], counts["D"], counts["T"], flag))
    return stray


if __name__ == "__main__":
    bad = sum(check(p) for p in sys.argv[1:])
    sys.exit(1 if bad else 0)
