# This is Question 7
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
