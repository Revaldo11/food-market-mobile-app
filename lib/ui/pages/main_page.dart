part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: Color(0XFFFAFAFC),
            ),
          ),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              children: [
                Center(
                  child: Text('Home Area'),
                ),
                Center(
                  child: Text('Order Area'),
                ),
                Center(
                  child: Text('Profile Area'),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavbar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
