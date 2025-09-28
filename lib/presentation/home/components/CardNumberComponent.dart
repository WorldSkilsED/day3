import 'package:bank/core/theme/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNumberComponent extends StatelessWidget {
  final String lastDigits;

  const CardNumberComponent({super.key, required this.lastDigits});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(3, (index) {
          return Padding(
            padding: EdgeInsets.only(right: index < 2 ? 8 : 0),
            child: Text(
              '•' * 4,
              style: GoogleFonts.inter(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                color: AppColor.default_text_color,
              ),
            ),
          );
        }),
        const SizedBox(width: 8),
        Text(
          lastDigits,
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            color: AppColor.default_text_color,
          ),
        ),
      ],
    );
  }
}
