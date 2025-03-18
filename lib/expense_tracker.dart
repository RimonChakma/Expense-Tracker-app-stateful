import 'package:flutter/material.dart';

class ExpenseTrackerScreen extends StatefulWidget {
  const ExpenseTrackerScreen({super.key});

  @override
  State<ExpenseTrackerScreen> createState() => _ExpenseTrackerScreenState();
}

class _ExpenseTrackerScreenState extends State<ExpenseTrackerScreen> {

  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expense tracker app"),),
      body: Column(
        children: [
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "title"
          ),),
          TextFormField(
            controller: amountController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "amount"
          ),),
        ],
      ),
    );
  }
}
