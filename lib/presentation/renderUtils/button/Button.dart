import 'package:bank/presentation/renderUtils/paddingUtils/PaddingUtils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonComponent extends StatefulWidget {
  Widget icon;
  String name;
  ButtonComponent({required this.icon, required this.name});
  @override
  State<StatefulWidget> createState() => _ButtonComponent();
}

class _ButtonComponent extends State<ButtonComponent> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(children: [
        Container(
        padding: EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Color.fromRGBO(60, 71, 85, 1.0),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Column(
          children: [
            widget.icon,
          ],
        ),
    ),
        PaddingUtils.paddingTop(5),
        Text(widget.name, style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 35, 35, 35)),)
      ]


      ),
    );

  }
}