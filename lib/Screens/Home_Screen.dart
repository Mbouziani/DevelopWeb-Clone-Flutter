// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:companyweb/DATA.dart';
import 'package:companyweb/Screens/ContactUs_Screen.dart';
import 'package:companyweb/Sections/Home/Home_Section.dart';
import 'package:companyweb/Sections/Navigator/headerItems.dart';
import 'package:companyweb/Sections/Service/Service_Section.dart';
import 'package:companyweb/Widgets/Colors.dart';
import 'package:companyweb/Widgets/Costumebutton.dart';
import 'package:companyweb/Widgets/OnHover.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ServiceKey = GlobalKey();
  final HomeKey = GlobalKey();
  final PortfolioKey = GlobalKey();
  final AboutKey = GlobalKey();
  final Opinionkey = GlobalKey();

  Future ScrolltoItem(GlobalKey itemKey) async {
    await Scrollable.ensureVisible(itemKey.currentContext!,
        curve: Curves.easeInOutCirc,
        duration: const Duration(
          milliseconds: 1000,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          width: 990,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/develooper_header.png',
                  height: 38,
                  width: 207,
                ),
                Row(
                  children: List.generate(
                      6,
                      (index) => InkWell(
                          hoverColor: white,
                          highlightColor: white,
                          onTap: () {
                            switch (index) {
                              case 0:
                                ScrolltoItem(HomeKey);

                                break;
                              case 1:
                                ScrolltoItem(ServiceKey);
                                break;
                              case 2:
                                ScrolltoItem(Opinionkey);
                                break;
                              case 3:
                                ScrolltoItem(PortfolioKey);
                                break;
                              case 4:
                                ScrolltoItem(AboutKey);
                                break;
                              case 5:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactUsScreen()),
                                );
                                break;

                              default:
                                ScrolltoItem(HomeKey);
                            }
                          },
                          child: headritem(
                            index: index,
                            txtcolor: bleuClr,
                          ))),
                )
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(
              Homekey: HomeKey,
              aboutFunction: () => ScrolltoItem(AboutKey),
              portfolioFunction: () => ScrolltoItem(PortfolioKey),
            ),
            ServisecSection(ServiseKey: ServiceKey),
            OpinionSection(Opinionkey: Opinionkey),
            ClientWorkedWith(PortfolioKey: PortfolioKey),
            BottomSection(Aboutkey: AboutKey),
          ],
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  final Key Aboutkey;

  const BottomSection({Key? key, required this.Aboutkey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: Aboutkey,
      width: MediaQuery.of(context).size.width,
      height: 900,
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            color: white,
            width: MediaQuery.of(context).size.width,
            height: 460,
            child: const Image(
              image: AssetImage(
                'assets/images/users.jpg',
              ),
              fit: BoxFit.contain,
              height: 333,
              width: 800,
            ),
          ),
          Container(
            color: gren,
            width: MediaQuery.of(context).size.width,
            height: 440,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              const SizedBox(
                width: 990,
                child: Text(
                  "Would you like develooper to build your website?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontFamily: 'Comfortaa',
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OnHover(
                builder: (isHovered) {
                  return Costumebutton(
                    isHovered: isHovered,
                    textbutton: 'CONTACT US',
                    backClr: transClr,
                    txtClr: white,
                    hoverClr: white.withOpacity(0.3),
                    borderClr: white,
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactUsScreen()),
                      );
                    },
                    borderhvrClr: white,
                  );
                },
              ),
              const SizedBox(
                height: 70,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Image(
                          image: AssetImage(
                            'assets/images/develooper_header.png',
                          ),
                          fit: BoxFit.contain,
                          height: 38,
                          width: 222,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          width: 990,
                          child: Text(
                            "© Copyright - 2018 | develooper.io gmbh | Impressum",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontFamily: 'Comfortaa',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.email,
                                size: 22,
                                color: opengrey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.facebook,
                                size: 22,
                                color: opengrey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -20,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topCenter,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(45 / 360),
                        child: Container(
                          color: Colors.black,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ClientWorkedWith extends StatelessWidget {
  final Key PortfolioKey;

  const ClientWorkedWith({Key? key, required this.PortfolioKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 40,
          right: MediaQuery.of(context).size.width * 0.28,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(-4 / 360),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.3),

                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(4, 10), // Shadow position
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: MediaQuery.of(context).size.width * 0.28,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(4 / 360),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.3),

                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(4, 10), // Shadow position
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          right: MediaQuery.of(context).size.width * 0.28,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(4 / 360),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),

                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(4, 10), // Shadow position
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: MediaQuery.of(context).size.width * 0.28,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(-4 / 360),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),

                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(4, 10), // Shadow position
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          key: PortfolioKey,
          margin: EdgeInsets.only(bottom: 50, top: 50),
          color: orngClr,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(children: [
              const SizedBox(
                width: 990,
                child: Text(
                  "Clients who worked with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontFamily: 'Comfortaa',
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                width: 990,
                child: Wrap(
                  runSpacing: 30,
                  spacing: 30,
                  children:
                      List.generate(6, (index) => FlipCardItem(index: index)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              OnHover(
                builder: (isHovered) {
                  return Costumebutton(
                    isHovered: isHovered,
                    textbutton: 'CHECK OUT ALL OUR WORKS',
                    backClr: transClr,
                    txtClr: white,
                    hoverClr: white.withOpacity(0.3),
                    borderClr: white,
                    onClick: () {},
                    borderhvrClr: white,
                  );
                },
              )
            ]),
          ),
        ),
      ],
    );
  }
}

class FlipCardItem extends StatelessWidget {
  final int index;

  const FlipCardItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        js.context.callMethod('open', [Clienlink[index]]);
      }),
      mouseCursor: SystemMouseCursors.click,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 15,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(3 / 360),
              child: Container(
                height: 30,
                width: 280,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.7),

                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: const Offset(4, 10), // Shadow position
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(-3 / 360),
              child: Container(
                height: 30,
                width: 280,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.7),

                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: const Offset(4, 10), // Shadow position
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 155,
            width: 310,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/${Clienimag[index]}',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OpinionSection extends StatelessWidget {
  final Key Opinionkey;

  const OpinionSection({Key? key, required this.Opinionkey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: Opinionkey,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0, bottom: 40),
        child: Column(
          children: [
            const SizedBox(
              width: 990,
              child: Text(
                "What our clients talked about us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontFamily: 'Comfortaa',
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: black,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 430,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                itemCount: 2,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                ),
                itemBuilder: (context, index, realindex) {
                  return Column(
                    children: [
                      AvatarItem(index: index),
                      const SizedBox(
                        height: 30,
                      ),
                      OpinionItem(index: index),
                      const SizedBox(
                        height: 30,
                      ),
                      OpinionCreater(
                        index: index,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpinionCreater extends StatelessWidget {
  final int index;

  const OpinionCreater({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          Creator[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.6,
            fontFamily: 'Comfortaa',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: black,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        OnHover(
          builder: (isHovered) => InkWell(
            onTap: (() {}),
            highlightColor: white,
            hoverColor: white,
            child: Text(
              Web[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.6,
                fontFamily: 'Comfortaa',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: isHovered ? orngClr : black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AvatarItem extends StatelessWidget {
  final int index;

  const AvatarItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: white,
      backgroundImage: AssetImage(
        "assets/images/${Avatar[index]}",
      ),
    );
  }
}

class OpinionItem extends StatelessWidget {
  final int index;

  const OpinionItem({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: opengrey,
      width: 990,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text(
          opinion[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.6,
            fontFamily: 'Comfortaa',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: black,
          ),
        ),
      ),
    );
  }
}
