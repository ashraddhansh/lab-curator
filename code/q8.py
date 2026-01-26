# This is Question 8
with open("file.txt", "w") as f:
    f.write("I am Arpit Shraddhansh\n")
    f.write("I like programming\n")
    f.write("I like retro tech\n")
    f.write("I am currently persuing B.Tech in CSE\n")
    f.write("Name of my university is K.M.C. Language university\n")
    f.write("I also like listening to music")
    f.write("Typesetting also is one thing that I want to learn more about\n")
    f.write("I like learning new things\n")
    f.write("I have interest in GNU/Linux and open source\n")
    f.write("I use Arch BTW\n")

with open("file.txt", "r") as f:
    lines = f.readlines()

lines[0] = lines[0].strip()+ " Best Line\n"

with open("file.txt", "w") as f:
    lines = f.writelines(lines)

with open("file.txt", "r") as f:
    lines = f.readlines()

for line in lines:
    if "Arpit" in line:
        del lines[lines.index(line)]

with open("file.txt", "w") as f:
    lines = f.writelines(lines)

with open("file.txt", "w") as f:
    pass

with open("file.txt", "r") as f:
    lines = f.readlines()
print(lines)
print("Today we have done one task")
