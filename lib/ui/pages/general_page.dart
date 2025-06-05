part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({
    super.key,
    this.title = "Title",
    this.subTitle = "Sub Title",
    this.onBackButton,
    this.child,
    this.backColor,
  });

  final String title;
  final String subTitle;
  final Function()? onBackButton;
  final Widget? child;
  final Color? backColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Visibility(
                            visible: onBackButton != null,
                            child: GestureDetector(
                              onTap: onBackButton,
                              child: Icon(
                                EvaIcons.arrowIosBackOutline,
                                size: 30,
                                color: backColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 25,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                subTitle,
                                style: TextStyle(color: Color(0XFF8D92A3), fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: defaultMargin,
                      width: double.infinity,
                      color: Color(0XFFFAFAFC),
                    ),
                    child ?? SizedBox.shrink()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
