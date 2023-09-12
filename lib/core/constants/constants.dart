import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

const dottedLine = DottedLine(
  direction: Axis.horizontal,
  alignment: WrapAlignment.center,
  lineLength: double.infinity,
  lineThickness: 1.0,
  dashLength: 2.0,
  dashColor: Colors.grey,
  dashRadius: 0.0,
  dashGapLength: 1.0,
  dashGapColor: Colors.transparent,
  dashGapRadius: 0.0,
);
const kHeightTen = SizedBox(
  height: 10,
);
const kHeightTwenty = SizedBox(
  height: 20,
);
const kWidthFive = SizedBox(
  width: 5,
);
const kBoldBlackTextStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.w600);

enum DeliveryMethod { homeDelivery, takeDelivery }

enum TimeSlot {
  time1,
}

const List<String> timeSlotList = [
  "10 am to 12 pm",
  "12 pm to 2 pm",
  "2 pm to 4 pm"
];
