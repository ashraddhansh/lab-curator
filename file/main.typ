#set text(
  size: 14pt
)

#align(center)[
#image("logo.png", width: 20%)
]
#align(center, text(28pt)[
  *Khwaja Moinuddin Chishti Language University, Lucknow*
])
#align(center, text(20pt)[
  #underline[*Practical File of Data Science Lab*]

  *Session: 2025-26*
])
#align(left, text(16pt)[
  *Name:* Jatin Pandey

  *Enrollment No:* A-9726

  *Roll No:* 2308302020

  *Course:* B.Tech

  *Subject:* CSE(Artificial Intelligence and Data Science)

  *Paper Name:* Data Science Lab (DCS-553)

  *Semester:* V#super[th]
  #v(30pt)

  *Submitted To*
  #h(170pt)
  *Submitted By*

  Dr. Bably Dolly
  #h(164pt)
  Jatin Pandey

])
#set page(
  numbering: "1/1",
)
#set text(features: (calt: 0))

#show raw: set text(font: "JetBrains Mono")

#set heading(
  numbering: "1.1."
)
#show heading.where(level: 1): set text(size: 15pt)
#show heading.where(level: 2): set text(size: 14pt)

#pagebreak()
#align(center)[
#text(32pt)[*Index*]]


#table(
  columns: (auto,auto,auto,3cm,auto),
  rows: 1.3cm,
  [*S. No.*],[*Title*],[*Page No.*],[*Date*],[*Signature*],
  [1.], [Simple Interest Calculation], [3], [10/09/2025], [],
  [2.], [Print Numbers 1–10], [4], [10/09/2025], [],
  [3.], [Iterate and Print Fruits List], [5], [19/09/2025], [],
  [4.], [Print First and Third Characters], [6], [19/09/2025], [],
  [5.], [Remove Substring from String], [7], [19/09/2025], [],
  [6.], [Check and Append ‘KMC’], [8], [19/09/2025], [],
  [7.], [Student Result Calculator], [9-10], [20/09/2025], [],
  [8.], [File Operations with Personal Info], [11-12], [20/09/2025], [],
  [9.], [KMC File Write and Append], [13], [24/09/2025], [],
  [10.], [Multilevel Inheritance – Student Result], [14-15], [29/09/2025], [],
  [11.], [Restaurant Menu and Order System], [16-18], [06/10/2025], [],
  [12.], [Salary Receipt Generator], [19-21], [08/10/2025], [],
)

#pagebreak()


= Write a program to calculate simple interest. Take the principal, rate, and time as input from the user. Then, halve the rate and double the time, and calculate the simple interest again.

== Code

```
choice = "yes"
while choice.lower() == "yes":
    principal_amount = float(input("Enter the Principal Amount(Rs.): "))
    rate = float(input("Enter the Rate Amount(%): "))
    time = float(input("Enter the Time(in years): "))

    simple_interest = (principal_amount*rate*time)/100
    print("The simple interest on the given amount is Rs.", simple_interest)

    choice = input("Do you want to continue(yes/no): ")
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q1.py
Enter the Principal Amount(Rs.): 900
Enter the Rate Amount(%): 12
Enter the Time(in years): 2
The simple interest on the given amount is Rs. 216.0
Do you want to continue(yes/no): yes
Enter the Principal Amount(Rs.): 900
Enter the Rate Amount(%): 6
Enter the Time(in years): 4
The simple interest on the given amount is Rs. 216.0
Do you want to continue(yes/no): no
```]
#pagebreak()
= Write a program to print the numbers from 1 to 10.
== Code
```
for num in range(1,11):
    print(num)
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7 took 24s
❯ python3 q2.py
1
2
3
4
5
6
7
8
9
10
```
]
#pagebreak()
= Write a program to iterate through a list of fruits and print all its elements.
== Code

```
fruit_list = ["Apple", "Banana", "Cherry", "Mango", "Guava", "Pinapple"]

for fruit in fruit_list:
    print(fruit)
```

== Output

#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q3.py
Apple
Banana
Cherry
Mango
Guava
Pinapple
```
]
#pagebreak()
= Write a program that takes a string as input and prints the first and third characters of the string.
== Code

```
user_input = input("Enter the String: ")
print("The First Character of the String is: ", user_input[0])
print("The Third Character of the String is: ", user_input[2])
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q4.py
Enter the String: Random String
The First Character of the String is:  R
The Third Character of the String is:  n
```
]
#pagebreak()
= Given the input string ‘This is my world’, write a program to remove the substring ‘my world’.
== Code

```
given_string = "This is my world"

# Implementation 1
print(given_string.replace("my world", ""))


# Implementation 2

new_string = given_string[0:7]
print(new_string)
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7 took 18s
❯ python3 q5.py
This is
This is
```
]
#pagebreak()
= Take a one-line input from the user. Check whether the word ‘KMC’ is present in the input. If ‘KMC’ is found, append the word ‘Lucknow’ to ‘KMC’ and print the result three times.
== Code

```
user_input = input("Enter the String: ")

if "KMC" in user_input:
    new_string = user_input.replace("KMC", "KMC Lucknow")

    for i in range (3):
        print(new_string)

else:
    print("The user input doesn't contain the word 'KMC'")
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q6.py
Enter the String: KMC is a university.
KMC Lucknow is a university.
KMC Lucknow is a university.
KMC Lucknow is a university.
```
]
#pagebreak()
= Write a Python program to display the results of 5 students. Each student has marks in 5 subjects, with each subject carrying a maximum of 100 marks. Assign each student an identity code starting with STD2025.\ Calculate the total marks, percentage, and grade for each student, and print the result using a grading system.
== Code

```
def find_grade(percentage):
    if percentage >= 90 and percentage <= 100:
        return "A"

    elif percentage >= 80 and percentage < 90:
        return "B"

    elif percentage >= 70 and percentage < 80:
        return "C"

    elif percentage >= 60 and percentage < 70:
        return "D"

    elif percentage >= 50 and percentage < 60:
        return "F"

    else:
        return "Not Valid Input"

def find_percentage(list_of_marks):
    total_marks = sum(list_of_marks)
    return total_marks/5

def user_input():
    marks_input = input("Enter the Marks of 5 Subject out of 100 separated by comma: ")
    mark_list = list(marks_input.split(","))
    mark_list_float = [float(x) for x in mark_list]
    return mark_list_float

for i in range(5):
    print(f"--Info of Student {i+1}--")
    input_marks_list = user_input()
    print(f"Your Student ID is STD2025S{i+1}")
    print(f"Total Marks of Student {i+1} out of 500 is: ", sum(input_marks_list))
    print(f"Percentage marks of Student {i+1} is: ", find_percentage(input_marks_list))
    print(f"Grade of Student {i+1} is :", find_grade(find_percentage(input_marks_list)))
```

== Output

#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7 took 12s
❯ python3 q7.py
--Info of Student 1--
Enter the Marks of 5 Subject out of 100 separated by comma: 98,89,79,93,91
Your Student ID is STD2025S1
Total Marks of Student 1 out of 500 is:  450.0
Percentage marks of Student 1 is:  90.0
Grade of Student 1 is : A
--Info of Student 2--
Enter the Marks of 5 Subject out of 100 separated by comma: 12,86,63,60,59
Your Student ID is STD2025S2
Total Marks of Student 2 out of 500 is:  280.0
Percentage marks of Student 2 is:  56.0
Grade of Student 2 is : F
--Info of Student 3--
Enter the Marks of 5 Subject out of 100 separated by comma: 88,82,84,82,92
Your Student ID is STD2025S3
Total Marks of Student 3 out of 500 is:  428.0
Percentage marks of Student 3 is:  85.6
Grade of Student 3 is : B
--Info of Student 4--
Enter the Marks of 5 Subject out of 100 separated by comma: 76,56,75,49,57
Your Student ID is STD2025S4
Total Marks of Student 4 out of 500 is:  313.0
Percentage marks of Student 4 is:  62.6
Grade of Student 4 is : D
--Info of Student 5--
Enter the Marks of 5 Subject out of 100 separated by comma: 98,92,79,69,90
Your Student ID is STD2025S5
Total Marks of Student 5 out of 500 is:  428.0
Percentage marks of Student 5 is:  85.6
Grade of Student 5 is : B
```
]
#pagebreak()
= Write a Python program that creates a file and appends 10 lines of information about yourself into it.\ Then perform the following tasks:
== Code
  - Read the first line and append the words ‘best line’ to it.
  - Delete the line that contains your name.
  - Finally, delete all the remaining content from the file and display the message ‘Today we have done one task’.
```
with open("file.txt", "w") as f:
    f.write("I am Jatin Pandey\n")
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
    if "Jatin" in line:
        del lines[lines.index(line)]

with open("file.txt", "w") as f:
    lines = f.writelines(lines)

with open("file.txt", "w") as f:
    pass

with open("file.txt", "r") as f:
    lines = f.readlines()
print(lines)
print("Today we have done one task")
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7 took 1m2s
❯ python3 q8.py
[]
Today we have done one task
```
]

#pagebreak()
= Write a Python program to create a file and add 5 lines of content about KMC.\ After writing the lines, append a sentence containing some negative words (use your own assumptions) followed by the phrase _‘please write again’_.
== Code

```
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
```
== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q9.py
K.M.C. stands for Khwaja Moinuddin Chisti Language University
It is situated in Lucknow, Uttar PradeshIt's a state UniversityIt has many courses related to law, pharmacy, engineering, humanities, languages etc
It was established in 2009
It is not a good university please write again
It does not have B.Tech course please write again
```
]
#pagebreak()
= Write a Python program to demonstrate multilevel inheritance.\ Create three classes:
  - `Student_Details` – to store basic student information
  - `Marks` – to store marks of the student (inherits from `Student_Details`)
  - `Result` – to calculate and display the result (inherits from `Marks`)
  Use multilevel inheritance to display the complete student result.
== Code

```
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
```

== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q10.py
Enter Student Name: Alice
Enter Roll Number: 98

Enter Marks for 3 Subjects:
Subject 1: 98
Subject 2: 79
Subject 3: 88

========= STUDENT RESULT =========
Name        : Alice
Roll Number : 98
----------------------------------
Marks: 98.0, 79.0, 88.0
Total Marks : 265.0
Percentage  : 88.33%
==================================
```
]
#pagebreak()
= Write a Python program to create a restaurant menu system using classes. Create two parent classes:
  - `Menu` – containing food items with their prices
  - `Customer` – containing customer details
  Create a child class Order that inherits from both Menu and Customer. The Order class should store customer information, the items they ordered, calculate the total bill, and finally generate the order receipt.
== Code
```
# Parent Class 1: Menu
class Menu:
    def __init__(self):
        # Food items with prices
        self.food_items = {
            "Burger": 120,
            "Pizza": 250,
            "Pasta": 180,
            "Sandwich": 90,
            "Coffee": 60
        }

    def show_menu(self):
        print("\n------ RESTAURANT MENU ------")
        for item, price in self.food_items.items():
            print(f"{item} : Rs. {price}")
        print("-----------------------------\n")


# Parent Class 2: Customer
class Customer:
    def __init__(self):
        self.customer_name = input("Enter Customer Name: ")
        self.customer_mobile = input("Enter Customer Mobile: ")


# Child Class: Order (inherits Menu + Customer)
class Order(Menu, Customer):
    def __init__(self):
        Menu.__init__(self)        # initialize Menu
        Customer.__init__(self)    # initialize Customer
        self.ordered_items = {}    # To store items and quantity

    def take_order(self):
        self.show_menu()
        print("Enter items to order. Type 'done' to finish.\n")

        while True:
            item = input("Enter item name: ")

            if item.lower() == "done":
                break

            if item in self.food_items:
                qty = int(input("Enter quantity: "))
                self.ordered_items[item] = self.ordered_items.get(item, 0) + qty
            else:
                print("Item not found in menu!")

    def calculate_total(self):
        total = 0
        for item, qty in self.ordered_items.items():
            total += self.food_items[item] * qty
        return total

    def print_receipt(self):
        print("\n========== ORDER RECEIPT ==========")
        print(f"Customer Name   : {self.customer_name}")
        print(f"Mobile Number   : {self.customer_mobile}")
        print("------------------------------------")
        print("Items Ordered:")
        
        for item, qty in self.ordered_items.items():
            price = self.food_items[item]
            print(f"{item} x {qty} = Rs. {price * qty}")

        print("------------------------------------")
        total = self.calculate_total()
        print(f"Total Bill      : Rs. {total}")
        print("====================================\n")


# -------- MAIN PROGRAM --------
order = Order()
order.take_order()
order.print_receipt()
```
== Output
#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q11.py
Enter Customer Name: :Bob
Enter Customer Mobile: 9898983298

------ RESTAURANT MENU ------
Burger : Rs. 120
Pizza : Rs. 250
Pasta : Rs. 180
Sandwich : Rs. 90
Coffee : Rs. 60
-----------------------------

Enter items to order. Type 'done' to finish.

Enter item name: Coffe
Item not found in menu!
Enter item name: Coffee
Enter quantity: 1
Enter item name: Pasta
Enter quantity: 2
Enter item name: done

========== ORDER RECEIPT ==========
Customer Name   : :Bob
Mobile Number   : 9898983298
------------------------------------
Items Ordered:
Coffee x 1 = Rs. 60
Pasta x 2 = Rs. 360
------------------------------------
Total Bill      : Rs. 420
====================================
```
]
#pagebreak()
= Write a Python program to print a salary receipt for three types of employees: Regular Employee, Contractual Employee, and Daily-Wages Employee. Assume your own simple salary structure for each type. Take input from the user such as employee name, ID, and required salary details. Then print the salary receipt showing salary for each employee type.
== Code

```
class Employee:
    def __init__(self, name, emp_id):
        self.name = name
        self.emp_id = emp_id

    def print_receipt(self, employee_type, salary):
        print("\n------------------------------------")
        print(f"        {employee_type} Salary Receipt")
        print("------------------------------------")
        print(f"Employee Name : {self.name}")
        print(f"Employee ID   : {self.emp_id}")
        print(f"Salary        : Rs. {salary}")
        print("------------------------------------\n")


class RegularEmployee(Employee):
    def calculate_salary(self):
        basic = float(input("Enter Basic Salary: "))
        hra = float(input("Enter HRA: "))
        da = float(input("Enter DA: "))
        return basic + hra + da


class ContractualEmployee(Employee):
    def calculate_salary(self):
        monthly_pay = float(input("Enter Monthly Pay: "))
        bonus = float(input("Enter Bonus: "))
        return monthly_pay + bonus


class DailyWagesEmployee(Employee):
    def calculate_salary(self):
        days = int(input("Enter Number of Days Worked: "))
        rate = float(input("Enter Rate Per Day: "))
        return days * rate


# ----------- MAIN PROGRAM -----------

name = input("Enter Employee Name: ")
emp_id = input("Enter Employee ID: ")

print("\n--- Regular Employee Details ---")
reg = RegularEmployee(name, emp_id)
reg_salary = reg.calculate_salary()
reg.print_receipt("Regular Employee", reg_salary)

print("\n--- Contractual Employee Details ---")
con = ContractualEmployee(name, emp_id)
con_salary = con.calculate_salary()
con.print_receipt("Contractual Employee", con_salary)

print("\n--- Daily-Wages Employee Details ---")
dw = DailyWagesEmployee(name, emp_id)
dw_salary = dw.calculate_salary()
dw.print_receipt("Daily-Wages Employee", dw_salary)
```
== Output

#rect(width: 100%, radius: 5pt)[
```
uni/fds/code via  v3.13.7
❯ python3 q12.py
Enter Employee Name: Charlie
Enter Employee ID: A23

--- Regular Employee Details ---
Enter Basic Salary: 23000
Enter HRA: 4000
Enter DA: 1200

------------------------------------
        Regular Employee Salary Receipt
------------------------------------
Employee Name : Charlie
Employee ID   : A23
Salary        : Rs. 28200.0
------------------------------------


--- Contractual Employee Details ---
Enter Monthly Pay: 18000
Enter Bonus: 1900

------------------------------------
        Contractual Employee Salary Receipt
------------------------------------
Employee Name : Charlie
Employee ID   : A23
Salary        : Rs. 19900.0
------------------------------------


--- Daily-Wages Employee Details ---
Enter Number of Days Worked: 29
Enter Rate Per Day: 800

------------------------------------
        Daily-Wages Employee Salary Receipt
------------------------------------
Employee Name : Charlie
Employee ID   : A23
Salary        : Rs. 23200.0
------------------------------------
```
]
