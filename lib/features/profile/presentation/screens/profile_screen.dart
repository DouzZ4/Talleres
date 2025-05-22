import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_button.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
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
