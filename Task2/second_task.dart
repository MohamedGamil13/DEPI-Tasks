import 'dart:io';

void main() {
  List<Map<String, dynamic>> expenseList = [];
  bool run = true;
  while (run) {
    print("=== Expense traker ===");
    print('1. Add Expense');
    print('2. View All Expenses');
    print('3. Exit');
    print('Enter Your Choice (1-3)');
    String? input;
    input = stdin.readLineSync();
    switch (input) {
      case "1":
        addExpense(expenseList);

        break;
      case "2":
        viewAllExpenses(expenseList);
        break;
      case "3":
        run = false;
        break;

      default:
        print('Invalid selection please enter value between 1 : 3');
        break;
    }
  }
}

void addExpense(List<Map<String, dynamic>> expenseList) {
  print('Enter description : ');
  String? input = stdin.readLineSync();
  String des;
  if (input == null) {
    des = " ";
  } else {
    des = input;
  }
  print('Enter amount : ');
  double? amount;

  String? amountInput = stdin.readLineSync();
  double? validAmount;

  while (amount == null) {
    if (amountInput == null) {
      print('Enter amount again');
    } else {
      validAmount = double.tryParse(amountInput);
      if (validAmount != null && validAmount > 0) {
        amount = validAmount;
        print('Expenses Add Sucssfully');
      } else {
        print("Enter a valid value (postive value)");
        amountInput = stdin.readLineSync();
      }
    }
  }

  print('Select category (1-4): ');
  int selection = selectcatgory();
  Map<int, String> categoryMap = {
    1: "Food",
    2: "Transportation",
    3: "EnterTaiment",
    4: "other",
  };
  String category = categoryMap[selection]!;
  DateTime date = DateTime.now();
  Map<String, dynamic> map = {
    "description": des,
    'amount': amount,
    'category': category,
    "Date": date,
  };
  expenseList.add(map);
}

void viewAllExpenses(List<Map<String, dynamic>> expenseList) {
  if (expenseList.isNotEmpty) {
    print("\n========== All Expenses ==========\n");

    for (var expense in expenseList) {
      print("Description : ${expense['description']}");
      print("Amount      : ${expense['amount']} EGP");
      print("Category    : ${expense['category']}");
      print("Date        : ${expense['Date']}\n");
      print("----------------------------------");
    }

    print("=================================\n");
  } else {
    print('\nNo Expenses yet\n');
  }
}

int selectcatgory() {
  print("=== Expense traker ===");
  print('1. Food');
  print('2. Transportation');
  print('3. EnterTaiment');
  print('4. other');
  while (true) {
    String? input;
    input = stdin.readLineSync();
    switch (input) {
      case "1":
        return 1;
      case "2":
        return 2;

      case "3":
        return 3;

      case "4":
        return 4;

      default:
        print('Invalid selection please enter value between 1 : 4');
        break;
    }
  }
}

// Add expenses (description, amount, category and date)
