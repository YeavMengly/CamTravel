import 'package:cam_travel/src/view/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cam Travel',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(91, 123, 182, 100),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                color: Color.fromRGBO(91, 123, 182, 100),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        borderRadius: BorderRadius.circular(16),
                        border: const Border(
                            bottom: BorderSide(color: Colors.black)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(21, 235, 235, 241),
                              offset: Offset(0, 2),
                              blurRadius: 2)
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          height: 96,
                          width: 96,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              image: const DecorationImage(
                                  image:
                                      AssetImage('./assets/image/banner.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(48)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'VANNTHOL',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              Text('vtg*****@gmail.com')
                            ],
                          ),
                        ),
                        SizedBox(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: GestureDetector(
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    color:
                                        const Color.fromRGBO(91, 123, 182, 100),
                                    // image: const DecorationImage(
                                    //   image: AssetImage('./assets/image/edit.png'),
                                    //   fit: BoxFit.cover,

                                    // )
                                  ),
                                  child: const Icon(Icons.edit_note),
                                ),
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    height: 135,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        borderRadius: BorderRadius.circular(16),
                        border: const Border(
                            bottom: BorderSide(color: Colors.black)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(19, 216, 216, 228),
                              offset: Offset(0, 2),
                              blurRadius: 2)
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.language),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Language',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text('KH'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(Icons.arrow_forward)
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.dark_mode),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Language',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [Icon(Icons.arrow_forward)],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.notifications),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Notification',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [Icon(Icons.arrow_forward)],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        borderRadius: BorderRadius.circular(16),
                        border: const Border(
                            bottom: BorderSide(color: Colors.black)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(19, 216, 216, 228),
                              offset: Offset(0, 2),
                              blurRadius: 2)
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.star_rate),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Rate Your App',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [Icon(Icons.arrow_right)],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.feedback),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Feed Back',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [Icon(Icons.arrow_right)],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.help),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Help',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [Icon(Icons.arrow_right)],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.info),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'About Us',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [Icon(Icons.arrow_right)],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.circular(16),
                          border: const Border(
                              bottom: BorderSide(color: Colors.black)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(19, 216, 216, 228),
                                offset: Offset(0, 2),
                                blurRadius: 2)
                          ]),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(Icons.logout),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Log Out',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [Icon(Icons.arrow_right)],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
