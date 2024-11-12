import 'package:flutter/material.dart';

class CommonFloatingActionButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CommonFloatingActionButton(this.title, this.onTap, {super.key});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap(context);
        // Get.toNamed('/roomAdd');
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),),
      ),
    );
  }
}
