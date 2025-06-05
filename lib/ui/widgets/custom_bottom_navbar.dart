part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key, this.selectedIndex = 0, this.onTap});

  final int selectedIndex;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(0);
              }
            },
            child: SizedBox(
              width: 32,
              height: 32,
              child:
                  Icon(FontAwesomeIcons.house, color: selectedIndex == 0 ? Colors.amber : Color(0XFFE2E2E2), size: 32),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(1);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.symmetric(horizontal: 83),
              child: Icon(FontAwesomeIcons.fileInvoiceDollar,
                  color: selectedIndex == 1 ? Colors.amber : Color(0XFFE2E2E2), size: 32),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(2);
              }
            },
            child: SizedBox(
              width: 32,
              height: 32,
              child:
                  Icon(FontAwesomeIcons.user, color: selectedIndex == 2 ? Colors.amber : Color(0XFFE2E2E2), size: 32),
            ),
          ),
        ],
      ),
    );
  }
}
