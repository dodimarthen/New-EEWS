import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarEEWS extends StatelessWidget implements PreferredSizeWidget {
  const AppBarEEWS({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(59);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Earthquake Early Warning System',
        style: GoogleFonts.roboto(
          fontSize: 18.5,
          color: Colors.grey[50],
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
      elevation: 7,
      backgroundColor: Colors.blue[400],
      shadowColor: Colors.blue[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      toolbarHeight: 59,
      leading: Image.asset('assets/img/BMKG_1.png'),
    );
  }
}
