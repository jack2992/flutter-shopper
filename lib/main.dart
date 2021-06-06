import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: 250.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.green.shade200,
                    Colors.green,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                )),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(17.0, 40.0, 0.0, 30.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Topup.in\n\n",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                  text:
                                      "Pay bills and mobile recharge\neasily 24 hours services.\n\n",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ]),
                            ),
                          ),
                          Image.asset("images/illustration.png")
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          width: size.width,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search billers of providers",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Ongoing Promo',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: size.width,
                height: 150.0,
                margin: EdgeInsets.all(18.0),
                padding: EdgeInsets.only(right: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  //color: Colors.green.shade300,
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade200,
                      Colors.green,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("images/illu.png"),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Topup.in Challage",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "Get discount form Topup.in with finishing some mission.",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Text("Sure, Let's go!"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 9.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Feature Service',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryTab(
                          title: "All Services",
                          icon: Icons.category,
                        ),
                        CategoryTab(
                          title: "Mobile Credit",
                          icon: Icons.phone_android,
                        ),
                        CategoryTab(
                          title: "Electricity",
                          icon: Icons.power_settings_new,
                        ),
                        CategoryTab(
                          title: "Water",
                          icon: FontAwesomeIcons.water,
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryTab(
                          title: "Internet",
                          icon: Icons.wifi,
                        ),
                        CategoryTab(
                          title: "Cable TV",
                          icon: Icons.tv,
                        ),
                        CategoryTab(
                          title: "Installment",
                          icon: Icons.data_usage,
                        ),
                        CategoryTab(
                          title: "Insurance",
                          icon: FontAwesomeIcons.heartbeat,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0,)
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;
  final IconData icon;

  CategoryTab({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      margin: EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.green.shade50),
            child: Icon(
              icon,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
