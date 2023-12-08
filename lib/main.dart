import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_work/view/controller/bottomnav_provider.dart';
import 'package:test_work/view/mainpage/mainpage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(
            create:(context) =>SelectedIndexProvider() ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:MainScreen()
      ),
    );
  }
}

