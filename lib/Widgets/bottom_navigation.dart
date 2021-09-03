import 'package:doctor_app/Models/colors.dart';
import 'package:flutter/material.dart';

class NewBottomNavigationBar extends StatefulWidget {
  const NewBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<NewBottomNavigationBar> createState() => _NewBottomNavigationBarState();
}

class _NewBottomNavigationBarState extends State<NewBottomNavigationBar> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(20),
      height: _width * .155,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.11),
              blurRadius: 30,
              offset: const Offset(0, 10))
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                    print(index);
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      // duration: Duration(seconds: 1),
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        bottom: index == _currentIndex ? 0 : _width * .029,
                        right: _width * .0422,
                        left: _width * .0422,
                      ),
                      width: _width * .128,
                      height: index == _currentIndex ? _width * .014 : 0,
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                    ),
                    Icon(
                      listOfIcons[index],
                      size: _width * .076,
                      color: index == _currentIndex
                          ? AllColors().primaryColor
                          : Colors.black38,
                    ),
                    SizedBox(height: _width * .03),
                  ],
                ),
              )),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}
