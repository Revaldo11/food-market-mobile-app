part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  String? selectedCity;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Address',
      subTitle: 'Make sure it\'s valid',
      onBackButton: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, defaultMargin, defaultMargin, 6),
            child: Text(
              "Phone No",
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
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintStyle: greyFontStyle, hintText: 'Type your phone number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Address",
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
              controller: addressController,
              decoration:
                  InputDecoration(border: InputBorder.none, hintStyle: greyFontStyle, hintText: 'Type your address'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "House No",
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
              controller: houseNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintStyle: greyFontStyle, hintText: 'Type your house number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "City",
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
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedCity,
              hint: Text("Select your city", style: greyFontStyle),
              underline: SizedBox(),
              items: [
                DropdownMenuItem(
                  value: 'Bandung',
                  child: Text("Bandung", style: blackFontStyle3),
                ),
                DropdownMenuItem(
                  value: 'Jakarta',
                  child: Text("Jakarta", style: blackFontStyle3),
                ),
                DropdownMenuItem(
                  value: 'Surabaya',
                  child: Text("Surabaya", style: blackFontStyle3),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 45,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text(
                "Sign Up Now",
                style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
