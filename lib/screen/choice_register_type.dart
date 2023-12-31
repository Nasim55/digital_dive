import 'package:digital_dive/screen/login_screen.dart';
import 'package:digital_dive/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChoiceRegisterType extends StatefulWidget {
  static const routeNamed = 'ChoiceRegisterType';

  final int activePage;

  const ChoiceRegisterType({super.key, required this.activePage});

  @override
  State<ChoiceRegisterType> createState() => _ChoiceRegisterTypeState();
}

class _ChoiceRegisterTypeState extends State<ChoiceRegisterType> {
  bool isAnimate = false;
  bool isATeacher = false;

  Future animations() async {
    setState(() => isAnimate = true);
    await Future.delayed(
      const Duration(milliseconds: 700),
    );
    setState(() => isAnimate = false);
  }

  @override
  void initState() {
    animations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              top: 40,
              left: isAnimate ? 40 : 80,
              duration: const Duration(milliseconds: 700),
              child: Transform.rotate(
                alignment: Alignment.topLeft,
                angle: 45,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    gradient: LinearGradient(colors: [
                      Colors.blueGrey,
                      Colors.lightBlue,
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              right: isAnimate ? 40 : 80,
              top: 10,
              child: Transform.rotate(
                alignment: Alignment.bottomRight,
                angle: 45,
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.deepOrange,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              bottom: isAnimate ? 300 : 550,
              child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black38,
                  ),
                  alignment: Alignment.topCenter,
                  child: const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 44,
                      fontFamily: 'CroissantOne',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 410,
                height: 410,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: Colors.blueAccent,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(microseconds: 700),
                      bottom: isAnimate ? 10 : 170,
                      width: 350,
                      height: 65,
                      child: AnimatedOpacity(
                        opacity: isAnimate ? 0 : 1,
                        duration: const Duration(milliseconds: 700),
                        child: CustomButton(
                          nameBtn: 'Register as a teacher',
                          colors: const [
                            Colors.deepOrange,
                            Colors.deepOrangeAccent,
                          ],
                          onTap: () {
                           setState(() {
                             isATeacher = true;
                           });
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 700),
                      bottom: isAnimate ? 10 : 90,
                      width: 350,
                      height: 65,
                      child: AnimatedOpacity(
                        opacity: isAnimate ? 0 : 1,
                        duration: const Duration(milliseconds: 700),
                        child: CustomButton(
                          nameBtn: 'Register as a user',
                          colors: const [
                            Colors.white,
                            Colors.white54,
                          ],
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              width: 200,
              height: 200,
              top: isAnimate ? 10 : -200,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    scale: 9,
                    image: AssetImage('images/rocket-158.gif'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
