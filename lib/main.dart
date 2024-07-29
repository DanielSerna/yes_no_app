import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     int selectedColor = 1;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => ChatProvider() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: AppTheme( selectedColor: selectedColor ).theme(),
        home: const ChatScreen()
      ),
    );
  }
}