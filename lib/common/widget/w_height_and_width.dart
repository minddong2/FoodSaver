import 'package:flutter/material.dart';


const width5 = Width(5);
const width10 = Width(10);
const width20 = Width(20);
const width30 = Width(30);
const width35 = Width(35);
const width40 = Width(40);
const width50 = Width(50);
const width150 = Width(150);

const height5 = Height(5);
const height10 = Height(10);
const height20 = Height(20);
const height30 = Height(30);

const devicewidth4 = DeviceWidth(4);
const devicewidth10 = DeviceWidth(10);
const devicewidth15 = DeviceWidth(15);
const devicewidth20 = DeviceWidth(20);
const devicewidth25 = DeviceWidth(25);
const devicewidth30 = DeviceWidth(30);
const devicewidth35 = DeviceWidth(35);

const deviceheight40 = DeviceHeight(40);


class Height extends StatelessWidget {
  final double height;

  const Height(
    this.height, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: height,
    );
  }
}

class Width extends StatelessWidget {
  final double width;

  const Width(
    this.width, {
    Key? key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}


class DeviceWidth extends StatelessWidget {
  final double width;

  const DeviceWidth(
      this.width, {
        Key? key,
      }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(

      width: (deviceWidth/ width),
    );
  }
}


class DeviceHeight extends StatelessWidget {
  final double height;

  const DeviceHeight(
      this.height, {
        Key? key,
      }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(

      height: (deviceHeight/ height),
    );
  }
}
