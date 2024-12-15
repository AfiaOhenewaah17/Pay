import 'package:flutter/material.dart';
import 'package:payment_system/Component/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SizedBox(
        height: h,
        child: Stack(
          children: [
            _headSection(),
          ],
        ),
      ),
    );
  }
  _headSection(){
    return SizedBox(
      height: 310,

      child:  Stack(
        children: [
            _mainBackground(),

        ],
      ),
    );
  }
  _mainBackground(){
    return Positioned(

        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "images/background.png"
                )
            )
          ),
        )
    );
  }
}


