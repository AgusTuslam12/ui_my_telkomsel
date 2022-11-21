import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_my_telkomsel/theme.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: ListView(children: [
        Container(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
              "assets/images/hero-login.svg",
              height: 134,
              width: 148,
            )),
        SizedBox(
          height: 46,
        ),
        Text(
          "Silahkan masuk dengan nomor telkomsel kamu",
          style: Heading,
        ),
        SizedBox(
          height: 26,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomo Hp",
              style: GoogleFonts.openSans(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(),
                  hintText: "Cth. 089 xxx xxx",
                  hintStyle: GoogleFonts.openSans(
                    color: Color(0xffA4B0BE),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ],
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 24,
            width: 24,
            child: Obx(
              () => Checkbox(
                activeColor: Colors.red,
                mouseCursor: MouseCursor.defer,
                value: controller.checkController.value,
                onChanged: (value) => {
                  controller.checkController.toggle(),
                },
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: RichText(
                text: TextSpan(
                    text: "Saya menyetujui ",
                    style: textBase,
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Klik Syarat");
                          },
                        text: "syarat",
                        style: GoogleFonts.openSans(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ", ",
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Klik Ketentuan");
                          },
                        text: "ketentuan",
                        style: GoogleFonts.openSans(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ", dan ",
                          style: GoogleFonts.openSans(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Klik Privasi");
                          },
                        text: "privasi ",
                        style: GoogleFonts.openSans(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: "Telkomsel",
                          style: GoogleFonts.openSans(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ]),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 32,
        ),
        Container(
          height: 42,
          width: 335,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "MASUK",
              style: GoogleFonts.openSans(
                color: Color(0xff747D8C),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffE4E5EA),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            "Atau masuk Menggunakan",
            style: GoogleFonts.openSans(
              color: Color(0xff747D8C),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.string(
                    '''<svg role="img" Color() viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Facebook</title><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/></svg>''',
                    color: Color(0xff3B5998),
                    height: 18,
                    width: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Facebook",
                    style: GoogleFonts.openSans(
                        color: Color(0xff3B5998),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size(157, 42),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xff385998)),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.string(
                    '''<svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Twitter</title><path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/></svg>''',
                    color: Color(0xff1DA1F2),
                    height: 18,
                    width: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Twitter",
                    style: GoogleFonts.openSans(
                        color: Color(0xff1DA1F2),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size(157, 42),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                side: MaterialStateProperty.all(
                  BorderSide(color: Color(0xff1DA1F2)),
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
