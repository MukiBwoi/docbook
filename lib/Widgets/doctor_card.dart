import 'package:doctor_app/Widgets/light_text.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueAccent,
      ),
      width: _width * 0.8,
      height: _height / 4,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.compass_calibration),
                      Text("World Tour")
                    ],
                  ),
                ),
                Text("Chris Leong"),
                LightText(
                    lightText: 'Jan 10-Feb-14', textAlign: TextAlign.start),
                ElevatedButton(onPressed: () {}, child: Text("Book Now"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
