# This is Question 10

# Parent Class
class Student_Details:
    def __init__(self):
        self.name = input("Enter Student Name: ")
        self.roll = input("Enter Roll Number: ")

# Child Class 1 (inherits Student_Details)
class Marks(Student_Details):
    def __init__(self):
        super().__init__()
        print("\nEnter Marks for 3 Subjects:")
        self.m1 = float(input("Subject 1: "))
        self.m2 = float(input("Subject 2: "))
        self.m3 = float(input("Subject 3: "))

# Child Class 2 (inherits Marks) - Final Level
class Result(Marks):
    def __init__(self):
        super().__init__()

    def calculate_result(self):
        total = self.m1 + self.m2 + self.m3
        percentage = total / 3
        return total, percentage

    def display(self):
        total, percentage = self.calculate_result()

        print("\n========= STUDENT RESULT =========")
        print(f"Name        : {self.name}")
        print(f"Roll Number : {self.roll}")
        print("----------------------------------")
        print(f"Marks: {self.m1}, {self.m2}, {self.m3}")
        print(f"Total Marks : {total}")
        print(f"Percentage  : {percentage:.2f}%")
        print("==================================\n")


# ------- MAIN PROGRAM -------
obj = Result()
obj.display()
