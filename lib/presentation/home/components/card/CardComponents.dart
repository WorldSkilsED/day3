import 'dart:ui';
import 'package:bank/presentation/renderUtils/paddingUtils/PaddingUtils.dart';
import 'package:bank/presentation/renderUtils/sideCutCliper/SideCutCliper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardComponents extends StatefulWidget {

  const CardComponents({super.key});
  @override
  State<StatefulWidget> createState() => _StateCardComponents();
}

class _StateCardComponents extends State<CardComponents> {
  @override
  Widget build(BuildContext context) {
    return PaddingUtils.paddingHorizontal(
      30,
      ClipPath(
        clipper: SideCutClipper(),
        child: Container(
          width: double.infinity,
          height: 170,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(34, 43, 55, 0.7),
                  gradient: LinearGradient(
                    tileMode: TileMode.clamp,
                    transform: GradientRotation(0.1),
                    colors: [
                      Color.fromRGBO(60, 71, 85, 0.8),
                      Color.fromRGBO(34, 43, 55, 0.8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.25),
                    width: 1.2,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: const Offset(-40, 32),
                      child: Transform.rotate(
                        angle: -1.55,
                        child: Text(
                          'PULSE',
                          style: GoogleFonts.inter(
                            fontSize: 50,
                            fontWeight: FontWeight.w100,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(height: 22,),
                   Align(alignment: Alignment.centerRight, child: Text(
                      'VISA',
                      style: GoogleFonts.firaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                   )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
