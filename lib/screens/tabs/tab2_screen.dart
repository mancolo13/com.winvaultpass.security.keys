import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final tokens = [
      {'name': 'Google Auth', 'code': '842 190', 'time': '24s'},
      {'name': 'GitHub 2FA', 'code': '519 304', 'time': '18s'},
      {'name': 'Stripe Connect', 'code': '930 481', 'time': '12s'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • 2FA Authenticator')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tokens.length,
        itemBuilder: (context, i) {
          final t = tokens[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t['name']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                    const SizedBox(height: 4),
                    Text(t['code']!, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2, color: AppTheme.secondaryColor)),
                  ],
                ),
                Text(t['time']!, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
              ],
            ),
          );
        },
      ),
    );
  }
}

