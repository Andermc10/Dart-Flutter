import 'package:flutter/material.dart';

// Importa tus widgets en snake_case
import 'budget_widget.dart';
import 'categories_widget.dart';
import 'income_widget.dart';
import 'menu_widget.dart';
import 'products_widget.dart';
import 'spending_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFFF3F6FF),
        appBar: const MenuWidget(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  color: Color(0xFF3561FE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: const Column(
                  children: [
                    BudgetWidget(),
                    IncomeWidget(),
                    SpendingWidget(),
                  ],
                ),
              ),
              const CategoriesWidget(),
              const SizedBox(height: 30), 
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Color(0xFF0047ff),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProductsWidget(),
              SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}