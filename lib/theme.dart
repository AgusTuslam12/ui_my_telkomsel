import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

final String icon_facebook = "assets/icons/facebook.png";
final String icon_twitter = "assets/icons/twitter.png";

Color TextColor = Color(0xff000000);

TextStyle textBase = GoogleFonts.openSans(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Color(0xff000000),
);

TextStyle Heading = GoogleFonts.openSans(
  color: TextColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
TextStyle Headingtwo = GoogleFonts.openSans(
  color: TextColor,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
