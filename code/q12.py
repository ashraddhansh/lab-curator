# This is Question 12

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
