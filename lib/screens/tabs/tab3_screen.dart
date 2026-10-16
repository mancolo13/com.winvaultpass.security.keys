import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Password Generator')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Generated Strong Secret', style: TextStyle(color: Colors.white60, fontSize: 12)),
                const SizedBox(height: 8),
                const Text('xK9#mQ2!vL7@wZ8\$', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppTheme.primaryColor, letterSpacing: 1.5)),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  icon: const Icon(Icons.copy),
                  label: const Text('Copy To Clipboard'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

