import 'package:amazon_payfort_example/constants/app_colors.dart';
import 'package:amazon_payfort_example/providers/payment_provider.dart';
import 'package:amazon_payfort_example/views/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Payfort Example',
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.primaryColor,
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => PaymentProvider(),
        child: const PaymentScreen(),
      ),
    );
  }
}
