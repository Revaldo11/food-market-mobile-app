part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign Up',
      subTitle: 'Register and eat',
      onBackButton: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: 110,
            height: 110,
            margin: EdgeInsets.only(top: 26),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photo_border.png'),
              ),
            ),
            child: Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: defaultMargin),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Add Photo",
                  style: GoogleFonts.poppins(color: greyColor, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Full Name",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: emailController,
              decoration:
                  InputDecoration(border: InputBorder.none, hintStyle: greyFontStyle, hintText: 'Type your full name'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Email",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintStyle: greyFontStyle, hintText: 'Type your email address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: passwordController,
              decoration:
                  InputDecoration(border: InputBorder.none, hintStyle: greyFontStyle, hintText: 'Type your password'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 45,
            child: TextButton(
              onPressed: () {
                Get.to(()=>AddressPage());
              },
              style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text(
                "Continue",
                style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
