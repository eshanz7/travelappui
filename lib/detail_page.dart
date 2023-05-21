import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travelappui/constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/detail_page/bg.png',
            fit: BoxFit.cover,
            width: getScreenWidth(context),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomWidget(),
          ),
          const Positioned(top: 40, left: 15, right: 15, child: TopRowWidget())
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(context) * 0.61,
      width: getScreenWidth(context),
      decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(75),
              topRight: Radius.circular(75))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // copy divider from homepage class

          SizedBox(
            height: getScreenHeight(context) * 0.02,
          ),
          const Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 44,
                  child: Divider(
                    height: 4,
                    thickness: 4,
                  ))),
          SizedBox(
            height: getScreenHeight(context) * 0.026,
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Manarola ",
                        style: TextStyle(
                            fontSize: 34,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w500,
                            color: blackColor),
                      ),
                      SizedBox(
                        height: getScreenHeight(context) * 0.012,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.5 Rating",
                            style: TextStyle(
                                letterSpacing: -0.2,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 91,
                    decoration: BoxDecoration(
                        color: redishColor.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/detail_page/heart.png',
                          height: 16,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "8.5k",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: blackColor,
                              letterSpacing: -1.5),
                        )
                      ],
                    ),
                  ),
                ],
              )),

          SizedBox(
            height: getScreenHeight(context) * 0.026,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(
              'assets/detail_page/staticmap.png',
              width: getScreenWidth(context),
              fit: BoxFit.cover,
              height: getScreenHeight(context) * 0.14,
            ),
          ),

          SizedBox(
            height: getScreenHeight(context) * 0.026,
          ),

          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "About Trip",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
              )),
          SizedBox(
            height: getScreenHeight(context) * 0.01,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ReadMoreText(
              "Manarola has its own train station and can be reached from either La Spezia or Levanto. From La Spezia, take the local train (treno regionale) in the direction of Sestri Levante and get off at the first stop. From Levanto, take the regional train in the direction of La Spezia Centrale. ",
              trimCollapsedText: "Read More",
              trimExpandedText: "Read Less",
              moreStyle: TextStyle(color: redishColor),
              lessStyle: TextStyle(color: redishColor),
              style: TextStyle(fontSize: 13, color: textColor),
              trimLines: 3,
              trimMode: TrimMode.Line,
            ),
          ),
          const Spacer(),
          const SubBottomWidget()
        ],
      ),
    );
  }
}

class SubBottomWidget extends StatelessWidget {
  const SubBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(context) * 0.12,
      width: getScreenWidth(context),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -6),
              blurRadius: 44,
              spreadRadius: 0,
              color: Colors.white.withOpacity(0.4),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total cost",
                style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                  text: const TextSpan(
                      text: '\$770',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                      children: [
                    TextSpan(
                        text: ' /person',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400))
                  ])),
            ],
          ),
          SizedBox(
            height: getScreenHeight(context) * 0.06,
            width: getScreenHeight(context) * 0.18,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              onPressed: () {},
              child: const Text(
                'Book Now',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopRowWidget extends StatelessWidget {
  const TopRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: const BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(16),
          child: Image.asset('assets/detail_page/arrow.png'),
        ),
        RichText(
          text: const TextSpan(
              text: "1",
              style: TextStyle(
                  fontSize: 18, color: blackColor, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: "/7",
                    style: TextStyle(fontSize: 13, color: blackColor))
              ]),
        )
      ],
    );
  }
}
