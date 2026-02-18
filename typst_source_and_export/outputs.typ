#pagebreak()
= This is Question 4

== Code
```
user_input = input("Enter the String: ")
print("The First Character of the String is: ", user_input[0])
print("The Third Character of the String is: ", user_input[2])

```
== Output
```
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

```


#pagebreak()
= This is Question 5

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
```
Enter Student Name: Arpit
Enter Roll Number: 900

Enter Marks for 3 Subjects:
Subject 1: 90
Subject 2: 34
Subject 3: 99

========= STUDENT RESULT =========
Name        : Arpit
Roll Number : 900
----------------------------------
Marks: 90.0, 34.0, 99.0
Total Marks : 223.0
Percentage  : 74.33%
==================================


```


#pagebreak()
= This is Question 6

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
```
Enter Customer Name: A Gaurav
Enter Customer Mobile: 9839992323

------ RESTAURANT MENU ------
Burger : Rs. 120
Pizza : Rs. 250
Pasta : Rs. 180
Sandwich : Rs. 90
Coffee : Rs. 60
-----------------------------

Enter items to order. Type 'done' to finish.

Enter item name: Pizza
Enter quantity: Co  1
Enter item name: Coffee
Enter quantity: 2
Enter item name: done

========== ORDER RECEIPT ==========
Customer Name   : Gaurav
Mobile Number   : 9839992323
------------------------------------
Items Ordered:
Pizza x 1 = Rs. 250
Coffee x 2 = Rs. 120
------------------------------------
Total Bill      : Rs. 370
====================================


```


#pagebreak()
= This is Question 7

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
```
Enter Employee Name: Arpit Shraddhansh
Enter Employee ID: 283

--- Regular Employee Details ---
Enter Basic Salary: 90000
Enter HRA: 233 33
Enter DA: 900

------------------------------------
        Regular Employee Salary Receipt
------------------------------------
Employee Name : Arpit Shraddhansh
Employee ID   : 283
Salary        : Rs. 93233.0
------------------------------------


--- Contractual Employee Details ---
Enter Monthly Pay: 8900
Enter Bonus: 890

------------------------------------
        Contractual Employee Salary Receipt
------------------------------------
Employee Name : Arpit Shraddhansh
Employee ID   : 283
Salary        : Rs. 9790.0
------------------------------------


--- Daily-Wages Employee Details ---
Enter Number of Days Worked: 32 0
Enter Rate Per Day: 900

------------------------------------
        Daily-Wages Employee Salary Receipt
------------------------------------
Employee Name : Arpit Shraddhansh
Employee ID   : 283
Salary        : Rs. 27000.0
------------------------------------


```


#pagebreak()
= This is Question 8

== Code
```
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

```
== Output
```
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


#pagebreak()
= This is Question 9

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
```
Apple
Banana
Cherry
Mango
Guava
Pinapple

```


#pagebreak()
= This is Question 10

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
```
Enter the String: Hello
The First Character of the String is:  H
The Third Character of the String is:  l

```


#pagebreak()
= This is Question 11

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
```
This is 
This is

```


#pagebreak()
= This is Question 12

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
```
Enter the String: Arpit
The user input doesn't contain the word 'KMC'

```


