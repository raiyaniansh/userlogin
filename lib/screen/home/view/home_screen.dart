import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:userlogin/screen/home/provider/home_provider.dart';
import 'package:userlogin/utiles/screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderf;
  HomeProvider? homeProvidert;

  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context, listen: false);
    homeProvidert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper"),
          backgroundColor: Colors.black,
        ),
          backgroundColor: Colors.black,
          body: Theme(
            data: ThemeData(
                brightness: Brightness.dark,
            ),
            child: Stepper(
              currentStep: homeProvidert!.i,
              onStepTapped: (value) {
                homeProviderf!.onstep(value);
              },
              onStepCancel: () {
                homeProviderf!.back();
              },
              onStepContinue: () {
                homeProviderf!.next();
              },
              steps: [
                Step(
                  state: homeProviderf!.i == 0 ?StepState.editing :StepState.disabled,
                    title:
                        Text("Singup", style: TextStyle(color: Colors.white)),
                    content: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        txtfiled('Full Name', homeProviderf!.sname),
                        SizedBox(
                          height: 10,
                        ),
                        txtfiled('Email', homeProviderf!.semail),
                        SizedBox(
                          height: 10,
                        ),
                        txtfiledpass('Password', homeProviderf!.spass),
                        SizedBox(
                          height: 10,
                        ),
                        txtfiledpass('Canform Password', homeProviderf!.scpass),
                      ],
                    )),
                Step(
                    state: homeProviderf!.i == 1 ?StepState.editing :StepState.disabled,
                    title:
                        Text("Singup", style: TextStyle(color: Colors.white)),
                    content: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        txtfiled('User Name', homeProviderf!.lname),
                        SizedBox(
                          height: 10,
                        ),
                        txtfiledpass('Password', homeProviderf!.lpass),
                      ],
                    )),
                Step(
                    state: homeProviderf!.i == 2 ?StepState.editing :StepState.disabled,
                    title:
                        Text("Home", style: TextStyle(color: Colors.white)),
                    content: Text("Login success",style: TextStyle(color: Colors.white),)),
              ],
            ),
          )),
    );
  }
}
