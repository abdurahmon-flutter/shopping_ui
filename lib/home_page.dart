import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 22,
        ),
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Apple Products',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 36,
                width: 38,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('7'),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Lifestyle sale',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        // Add your onTap logic here
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Shop Now',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            Expanded(
              child:   GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                physics: ScrollPhysics(),
                children: [
                  item(image: "assets/images/image2.jpg"),
                  item(image: "assets/images/image3.jpg"),
                  item(image: "assets/images/image4.jpg"),
                  item(image: "assets/images/image5.jpg"),
                ],
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
  Widget item({required String image,}) {

    return Container(
      height: 66,
      width: 66,
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.topRight,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          Icons.heart_broken,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }
}