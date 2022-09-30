import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  final List<String> _listItem = [
    'assets/images/images1.jpg',
    'assets/images/images2.jpg',
    'assets/images/images3.jpg',
    'assets/images/images4.jpg',
    'assets/images/images5.jpg',
    'assets/images/images1.jpg',
    'assets/images/images2.jpg',
    'assets/images/images3.jpg',
    'assets/images/images4.jpg',
    'assets/images/images5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text("Apple Products", style: TextStyle(color: Colors.white),),
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("8", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //#header
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/images5.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.3),
                          Colors.red.withOpacity(.01)
                        ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 35),),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Center(
                            child: Text("Shop Now", style: TextStyle(color: Colors.grey[900]),),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              //#body
              Expanded(
                  child: GridView.count(
                    padding: EdgeInsets.only(top: 20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 1,
                    children: _listItem.map((item) => cellOfList(item)).toList(),
                  )
              )
            ],
          ),
        )
    );
  }

  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(item),
                fit: BoxFit.cover
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 25,)
          ],
        ),
      ),
    );
  }
}
