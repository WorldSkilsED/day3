import 'package:bank/core/theme/AppColor.dart';
import 'package:bank/presentation/renderUtils/paddingUtils/PaddingUtils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultApp extends StatefulWidget {
  bool center;
  Widget children;

  DefaultApp({super.key, required this.center, required this.children});
  @override
  State<StatefulWidget> createState() => _StateDefaultApp();
}

class _StateDefaultApp extends State<DefaultApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 40,),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Home',
                    style: GoogleFonts.inter(
                      color: AppColor.default_text_color,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
            Align(
              alignment: Alignment.centerLeft,
              child:

            PaddingUtils.paddingHorizontal(10, Container(
                padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Text('RL', style: GoogleFonts.inter(color: AppColor.default_text_color, fontWeight: FontWeight.w500, fontSize: 13),)
                    ],
                  ),
            ),
            ),
            ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Align(alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Color.fromARGB(255, 215,215,215),
                            width: 1,
                        )
                    ),
                    child: Icon(Icons.notifications_none_rounded, size: 21, color: Color.fromARGB(255, 60, 60, 60),),
                  ),),)

              ],
            ),
            widget.center ? Center(child:  widget.children,) :  widget.children
          ],

        ),
    );
  }
}