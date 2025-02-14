import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DrawerItem(
      {super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueGrey),
      title: Text(title, style: GoogleFonts.akatab(fontSize: 16)),
      onTap: onTap,
    );
  }
}
