# This is Question 1
choice = "yes"
while choice.lower() == "yes":
    principal_amount = float(input("Enter the Principal Amount(Rs.): "))
    rate = float(input("Enter the Rate Amount(%): "))
    time = float(input("Enter the Time(in years): "))

    simple_interest = (principal_amount*rate*time)/100
    print("The simple interest on the given amount is Rs.", simple_interest)

    choice = input("Do you want to continue(yes/no): ")

