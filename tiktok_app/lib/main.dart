import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_app/Temas/app_temas.dart';
import 'package:tiktok_app/presentation/providers/discover_provider.dart';
import 'package:tiktok_app/presentation/screens/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider()..LoadNextVideos(),
        ),
      ],
      child: MaterialApp(
        title: 'Tiktok App',
        debugShowCheckedModeBanner: false,
        theme: AppTemas().getTheme(),
        home: DiscoverScreen(),
      ),
    );
  }
}
