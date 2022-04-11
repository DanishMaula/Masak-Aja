import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masak_aja/carousel.dart';
import 'package:masak_aja/category/asian_food.dart';
import 'package:masak_aja/detail_screen.dart';
import 'package:masak_aja/model/data_masak.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Masak Aja',
          style: TextStyle(color: Colors.white,
          fontFamily: 'lato'),
        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 20,
        backgroundImage: NetworkImage(
          'https://source.unsplash.com/50x50/?portrait',
          ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Halo, User 👋',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'lato',
                  color: Colors.orange,
                ),
              ),
              Text(
                'Masak apa hari ini?',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'lato',
                    color: Colors.orangeAccent),
              ),
              Text(
                'Temukan masakan mu disini.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Lato-Regular',
                    color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Text(
                  'Rekomendasi hari ini',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato'),
                ),
              ),
              CarouselWidget(listMasak: dataMasakList),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Temukan Masakanmu',
                  style: TextStyle(
                      fontFamily: 'lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.only(top: 8),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return AsianFood(title: 'Asian Food');
                          }));
                        }, // Handle your callback.
                        splashColor: Colors.orange.withOpacity(0.5),
                        child: Ink(
                          height: 125,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/asian.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return AsianFood(title: 'Eastern Food',);
                          }));
                        }, // Handle your callback.
                        splashColor: Colors.orange.withOpacity(0.5),
                        child: Ink(
                          height: 125,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/eastern.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return AsianFood(title: 'Italian Food',);
                          }));
                        }, // Handle your callback.
                        splashColor: Colors.orange.withOpacity(0.5),
                        child: Ink(
                          height: 125,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/italy.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return AsianFood(title: 'Western Food',);
                          }));
                        }, // Handle your callback.
                        splashColor: Colors.orange.withOpacity(0.5),
                        child: Ink(
                          height: 125,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/western.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
