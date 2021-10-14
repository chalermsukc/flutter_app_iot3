import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartUI extends StatefulWidget {
  const StartUI({Key? key}) : super(key: key);

  @override
  _StartUIState createState() => _StartUIState();
}

class _StartUIState extends State<StartUI> {
  @override
  Widget build(BuildContext context) {
    //โค้ดเอาพื้นหลังของ Status Bar ของมือถืออก
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    //0xFF424552
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        80.0,
                      ),
                      border: Border.all(
                        width: 10.0,
                        color: Color(0xFF424552)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontFamily: 'Prompt',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424552),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'your',
                    style: TextStyle(
                      fontFamily: 'Prompt',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424552),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'adventure',
                    style: TextStyle(
                      fontFamily: 'Prompt',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF424552),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 140.0,
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100.0,
                    70.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      70.0,
                    ),
                  ),
                  primary: Colors.yellow[800],
                  elevation: 7.0, //เงา
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don\'t have an account?',
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text(
                      'Sign up here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
