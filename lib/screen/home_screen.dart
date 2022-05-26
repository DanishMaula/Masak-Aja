import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masak_aja/carousel.dart';
import 'package:masak_aja/category/asian_food.dart';
import 'package:masak_aja/screen/detail_screen.dart';
import 'package:masak_aja/model/data_masak.dart';
import 'package:masak_aja/setting_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                children: [
                  Text('Manage Account & Settings',
                  style: TextStyle(color: Colors.white,
                  fontFamily: 'lato',
                  fontSize: 20),
                  ),
                  Expanded(
                    child: Hero(
                      tag: 'logo',
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            ListTile(
              title: Text('Account & Settings',
              style: TextStyle(fontSize: 16,
              fontFamily: 'lato'),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingScreen();
                }));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.settings,
            color: Colors.white,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          'Masak Aja',
          style: TextStyle(color: Colors.white,
          fontFamily: 'lato',
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 20,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
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
                'Halo, Danish Maula 👋',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'lato',
                  color: Colors.orange,
                ),
              ),
              
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                    color: Colors.orange,),
                    hintText: 'Telusuri',
                    hintStyle: TextStyle(
                      fontFamily: 'lato',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8.0),
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
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Kategori',
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Asah Skillmu!',
                  style: TextStyle(
                      fontFamily: 'lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Container(
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: YoutubePlayer(
                    controller: YoutubePlayerController(
                      initialVideoId: 'WodYuxM7gnw', //Add videoID.
                      flags: YoutubePlayerFlags(
                        hideControls: false,
                        controlsVisibleAtStart: true,
                        autoPlay: false,
                        mute: false,
                      ),
                    ),
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
