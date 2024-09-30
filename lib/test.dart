import 'package:e_comerse_app/core/constant/colors.dart';
import 'package:e_comerse_app/core/function/check_internet.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {


  var res ;

  inistaldata()async{
    res = await checkinternet();
  }
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Pinput(
          length: 6,
          showCursor: false,
          defaultPinTheme: PinTheme(
            width: 50,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColor.primarytColor)),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          onCompleted: (value) {},
        ),
      ),
    );
  }
}
