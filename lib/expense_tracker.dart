import 'package:flutter/material.dart';

class ExpenseTrackerScreen extends StatefulWidget {
  const ExpenseTrackerScreen({super.key});

  @override
  State<ExpenseTrackerScreen> createState() => _ExpenseTrackerScreenState();
}

class _ExpenseTrackerScreenState extends State<ExpenseTrackerScreen> {
  final List expenses = [];

  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  addExpense() {
    final String title = titleController.text;
    final double? amount = double.tryParse(amountController.text);

    if (title.isNotEmpty && amount != null && amount > 0) {
      setState(() {
        expenses.add({'title': title, 'amount': amount});
      });

      titleController.clear();
      amountController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expense tracker apps"),),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              controller: titleController,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "title"
            ),),

            SizedBox(height: 10,),

            TextFormField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "amount"
            ),),
          ],
        ),
      ),
    );
  }
}
