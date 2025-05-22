import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Configuración')),
      body: Center(
        child: CustomButton(
          label: 'Volver', 
          icon: Icons.arrow_back,
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
