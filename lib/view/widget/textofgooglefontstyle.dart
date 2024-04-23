    import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textOfGoogleFontStyle(String  name ,Color color ,double size ) {
return Text(name , style:
GoogleFonts.aBeeZee(
                          fontSize: size,
                          color: color,
                          fontWeight: FontWeight.bold),
                    );

    }