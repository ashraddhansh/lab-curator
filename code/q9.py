# This is Question 9

with open("kmc.txt", "w") as f:
    f.write("K.M.C. stands for Khwaja Moinuddin Chisti Language University\n")
    f.write("It is situated in Lucknow, Uttar Pradesh")
    f.write("It's a state University")
    f.write("It has many courses related to law, pharmacy, engineering, humanities, languages etc\n")
    f.write("It was established in 2009\n")
    f.write("It is not a good university\n")
    f.write("It does not have B.Tech course\n")

with open("kmc.txt", "r") as f:
    lines = f.readlines()

for line in lines:
    if "not" in line:
        lines[lines.index(line)] = lines[lines.index(line)].strip() + " please write again\n"

with open("kmc.txt", "w") as f:
    f.writelines(lines)

with open("kmc.txt", "r") as f:
    print(f.read())
