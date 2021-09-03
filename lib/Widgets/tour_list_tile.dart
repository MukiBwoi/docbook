// ignore: file_names
import 'package:flutter/material.dart';

class TourListTile extends StatelessWidget {
  const TourListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        tileColor: Color(0xfff5f5f5),
        leading: CircleAvatar(),
        title: const Text(
          "Lahor to Malaysia",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        subtitle: Text("Wed 110 jan - Thus 14 jan"),
      ),
    );
  }
}
