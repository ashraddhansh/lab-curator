# This is Question 11

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
