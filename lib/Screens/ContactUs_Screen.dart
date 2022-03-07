import 'package:companyweb/DATA.dart';
import 'package:companyweb/Sections/Navigator/headerItems.dart';
import 'package:companyweb/Widgets/Colors.dart';
import 'package:companyweb/Widgets/Costumebutton.dart';
import 'package:companyweb/Widgets/OnHover.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key}) : super(key: key);
  final contactUs = GlobalKey();
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          width: 990,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/develooper-logo-icon.png',
                  height: 38,
                  width: 207,
                ),
                Row(
                  children: List.generate(
                      6,
                      (index) => InkWell(
                          hoverColor: Colors.black,
                          highlightColor: Colors.black,
                          onTap: () {
                            index == 5
                                ? ScrolltoItem(contactUs)
                                : Navigator.pop(context);
                          },
                          child: headritem(
                              index: index,
                              txtcolor: index == 5 ? bleuClr : white))),
                )
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          key: contactUs,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 990,
                height: 93,
                alignment: Alignment.center,
                child: const Text(
                  "CONTACT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.3,
                    fontFamily: 'Comfortaa',
                    fontSize: 33,
                    fontWeight: FontWeight.w400,
                    color: bleuClr,
                  ),
                ),
              ),
              Column(
                children: List.generate(
                    4,
                    (index) => IputeItems(
                          titelOfInput: contactInputItems[index],
                          maxline: index == 3 ? 8 : 1,
                        )),
              ),
              Container(
                width: 693,
                alignment: Alignment.centerLeft,
                child: OnHover(
                  builder: (isHovered) {
                    return Costumebutton(
                      isHovered: isHovered,
                      textbutton: "SEND",
                      backClr: gren,
                      hoverClr: bleuClr,
                      borderClr: gren,
                      onClick: () {},
                      borderhvrClr: bleuClr,
                      txtClr: white,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const bottomcontact()
            ],
          ),
        ),
      ),
    );
  }
}

class IputeItems extends StatelessWidget {
  final int maxline;
  final String titelOfInput;

  const IputeItems(
      {Key? key, required this.maxline, required this.titelOfInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 693,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titelOfInput,
            textAlign: TextAlign.start,
            style: const TextStyle(
              height: 1.3,
              fontFamily: 'Comfortaa',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff333333),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 693,
            child: TextField(
              maxLines: maxline,
              style: const TextStyle(
                height: 1.3,
                fontFamily: 'Comfortaa',
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: black,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: black.withOpacity(0.3))),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: black.withOpacity(0.3))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class bottomcontact extends StatelessWidget {
  const bottomcontact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: 190,
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
    );
  }
}
