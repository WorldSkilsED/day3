import 'package:bank/presentation/renderUtils/paddingUtils/PaddingUtils.dart';
import 'package:bank/utils/StringUtils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrasactionComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TrasactionComponentState();
}

class TrasactionComponentState extends State<TrasactionComponent> {

  @override
  Widget build(BuildContext context) {
    return PaddingUtils.paddingHorizontal(10,
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Transform.translate(offset: Offset(0, 10),child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 235, 235),
              borderRadius: BorderRadius.circular(60),
            ),
            padding: EdgeInsets.all(8),
            child: Text('RL', style: GoogleFonts.inter(fontSize: 16, color: Color.fromARGB(255, 40, 40, 40)),),
          ),),
            SizedBox(width: 10,),
            Text('Balance Top Up', style: GoogleFonts.inter(color: Color.fromARGB(255, 40, 40, 40), fontSize: 16, fontWeight: FontWeight.w500),),
            Spacer(),
            Transform.translate(offset: Offset(0, 7), child: PaddingUtils.paddingHorizontal(10, Text(StringUtils.formaterString(3000) + ' ₸', style: GoogleFonts.inter(color: Color.fromARGB(255, 40, 40, 40), fontSize: 17, fontWeight: FontWeight.w600),),),),
          ],
        ),
       Transform.translate(offset: Offset(47, -8), child: Align(alignment: Alignment.centerLeft, child: Text('1 Jul 2024', style: GoogleFonts.inter(color: Color.fromARGB(255, 40, 40, 40)),))),
      ],
    ),
    );
  }

}