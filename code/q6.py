# This is Question 6

user_input = input("Enter the String: ")

if "KMC" in user_input:
    new_string = user_input.replace("KMC", "KMC Lucknow")

    for i in range (3):
        print(new_string)

else:
    print("The user input doesn't contain the word 'KMC'")
