import 'package:flutter/material.dart';
import 'package:travelappui/detail_page.dart';
import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
            width: getScreenWidth(context),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getScreenHeight(context) * 0.48,
              width: getScreenWidth(context),
              decoration: const BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: getScreenHeight(context) * 0.01,
                  ),
                  const SizedBox(
                    width: 44,
                    child: Divider(
                      height: 4,
                      thickness: 4,
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(context) * 0.026,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/fire.png',
                              height: 22,
                              width: 22,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("Popular Places",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.02,
                                    color: blackColor))
                          ],
                        ),
                        Image.asset(
                          'assets/filter_2.png',
                          height: 17,
                          width: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(context) * 0.02,
                  ),
                  Flexible(
                      child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {

                          // Lets Create Detail Page


                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));




                        },
                        child: PopularPlaces(
                          index: index,
                        ),
                      );
                    },
                    itemCount: images.length,
                  )),
                  SizedBox(
                    height: getScreenHeight(context) * 0.032,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 40,
              left: 15,
              right: 15,
              child: Column(
                children: [
                  topWidget(),
                  SizedBox(
                    height: getScreenHeight(context) * 0.04,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 42),
                    child: Text(
                      "Find The Best Place To Travel",
                      style: TextStyle(
                          fontSize: 42,
                          color: blackColor,
                          letterSpacing: -2.05,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(context) * 0.03,
                  ),
                  textField(context),
                ],
              ))
        ],
      ),
    );
  }
}

class PopularPlaces extends StatelessWidget {
  int? index;

  PopularPlaces({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: getScreenHeight(context) * 0.332,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    images[index!],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: -14,
                  right: 0,
                  left: 130,
                  child: Container(
                    height: 34,
                    width: 34,
                    decoration: const BoxDecoration(
                        color: bookmarkBgColor, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/img.png'),
                  ),
                )
              ],
            )),
            SizedBox(
              height: getScreenHeight(context) * 0.012,
            ),
            Text(
              names[index!],
              style: const TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18, color: blackColor),
            ),
            SizedBox(
              height: getScreenHeight(context) * 0.010,
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "4.5 Rating",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget topWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 42,
        width: 42,
        decoration:
            const BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
        padding: const EdgeInsets.all(12),
        child: Image.asset(
          'assets/menu.png',
        ),
      ),
      Image.asset(
        'assets/cap.png',
        height: 42,
        width: 42,
      )
    ],
  );
}

Widget textField(context) {
  return SizedBox(
    height: getScreenHeight(context) * 0.06,
    child: TextField(
      decoration: InputDecoration(
          fillColor: backgroundColor,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/search.png',
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: primaryColor, shape: BoxShape.circle),
              child: Image.asset(
                'assets/filter_1.png',
                height: 20,
                width: 20,
              ),
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: 'Search Place',
          hintStyle: const TextStyle(color: hintColor, fontSize: 14),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          )),
    ),
  );
}
