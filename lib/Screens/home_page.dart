import 'package:doctor_app/Models/colors.dart';
import 'package:doctor_app/Models/homemodel.dart';
import 'package:doctor_app/Widgets/bottom_navigation.dart';
import 'package:doctor_app/Widgets/doctor_card.dart';
import 'package:doctor_app/Widgets/normal_text.dart';
import 'package:doctor_app/Widgets/tour_list_tile.dart';
import 'package:doctor_app/Widgets/white_space.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const NewBottomNavigationBar(),
      backgroundColor: AllColors().primaryBg,
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AllColors().primaryBg,
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 55,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: AllColors().primaryColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard(),
                  ],
                ),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  NormalText(
                    normalText: 'Upcoming World Tour',
                    normalTextColor: Colors.black,
                  ),
                  Icon(Icons.sort),
                ],
              ),
              Column(
                children: [
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                  TourListTile(),
                  WhiteSpace(w: _width, h: _height * 0.02),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
