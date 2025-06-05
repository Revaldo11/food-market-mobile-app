part of 'pages.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign In',
      subTitle: 'Find your best ever meal',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
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
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45,
                    color: mainColor,
                  )
                : TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        elevation: 0,
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 45,
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45,
                    color: mainColor,
                  )
                : TextButton(
                    onPressed: () {
                      Get.to(() => SignUpPage());
                    },
                    style: TextButton.styleFrom(
                        elevation: 0,
                        backgroundColor: greyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: Text(
                      "Create New Account",
                      style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
