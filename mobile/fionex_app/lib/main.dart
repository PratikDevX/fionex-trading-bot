import 'package:flutter/material.dart';

void main() {
  runApp(const FionexApp());
}

class FionexApp extends StatelessWidget {
  const FionexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fionex',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080B12),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF3B82F6),
          secondary: Color(0xFF22C55E),
          surface: Color(0xFF111827),
        ),
        useMaterial3: true,
      ),
      home: const FionexHomePage(),
    );
  }
}

class FionexHomePage extends StatelessWidget {
  const FionexHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'FIONEX',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                'Trading Intelligence',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade400,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 40),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF111827),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xFF1F2937),
                  ),
                ),
                child: const Text(
                  'Confirmed Trades Only',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}