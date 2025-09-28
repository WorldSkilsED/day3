import 'package:bank/presentation/home/components/CardNumberComponent.dart';
import 'package:bank/presentation/home/components/card/CardComponents.dart';
import 'package:bank/presentation/layout/defaultApp/DefaultApp.dart';
import 'package:bank/presentation/renderUtils/button/Button.dart';
import 'package:bank/presentation/renderUtils/paddingUtils/PaddingUtils.dart';
import 'package:bank/presentation/renderUtils/transaction/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}
const cards = [
  CardComponents(),
  CardComponents(),
  CardComponents()
];
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultApp(center: false,
    children: Column(
      children: [
        PaddingUtils.paddingTop(20),
        Text('₸ 6.815,53', style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 32),),
        Align(alignment: Alignment.center, child:  Text('Current balance', style: GoogleFonts.inter(color: Color.fromARGB(255, 140, 140, 140), fontWeight: FontWeight.w400, fontSize: 14),),),
        PaddingUtils.paddingTop(30),
        SizedBox(
          height: 170,
          child: PageView.builder(
            controller: PageController(
              viewportFraction: 1 ,
            ),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: cards[index],
              );
            },
          ),
        ),
        PaddingUtils.paddingTop(10),
        CardNumberComponent(lastDigits: '8831'),
        PaddingUtils.paddingTop(10),
        Row(
          children: [
            SizedBox(width: 35,),
            ButtonComponent(icon: Icon(Icons.add, size: 30, color: Colors.white,), name: 'Top up'),
            Spacer(),
            ButtonComponent(icon: Icon(Icons.refresh, size: 30, color: Colors.white,), name: 'Excange'),
            Spacer(),
            ButtonComponent(icon: Icon(Icons.arrow_upward, size: 30, color: Colors.white,),name: 'Transfer'),
            Spacer(),
            ButtonComponent(icon: Icon(Icons.credit_card, size: 30, color: Colors.white,), name: 'Details'),
            SizedBox(width: 35,),

          ],
        ),
        SizedBox(height: 30,),
        PaddingUtils.paddingHorizontal(15,
        Row(
          children: [
            Text('Transaction', style: GoogleFonts.inter(fontSize: 23, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 35, 35, 35)),),
            Spacer(),
            Text('View all',  style: GoogleFonts.inter(decoration: TextDecoration.underline, fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 35, 35, 35)),)
          ],
        )
        ),
        SizedBox(height: 10,),
        TrasactionComponent()

      ],
    ),
    );
  }
}