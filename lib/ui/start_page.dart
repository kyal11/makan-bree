import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:makan_bree/ui/home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MAKAN-',
                      style: TextStyle(
                        fontFamily: "BebasNeue",
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      'BREE',
                      style: TextStyle(
                        fontFamily: "BebasNeue",
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        color: Color(0xFFDF7B07),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: kIsWeb ? 300 : double.infinity,
                height: 48.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDF7B07),
                  ),
                  child: const Text(
                    'LANJUT',
                    style: TextStyle(
                      fontFamily: "BebasNeue",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
