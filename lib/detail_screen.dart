import 'package:flutter/material.dart';
import 'package:masak_aja/model/data_masak.dart';

class DetailScreen extends StatelessWidget {

  const DetailScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final DataMasak datamasak = dataMasakList[0];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  'images/ayamgulai.jpg',
                  fit: BoxFit.cover,
                ),
                //create back button
                Positioned(
                  top: 30,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    datamasak.name,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'lato'
                    ),
                  ),
                  Favorite()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4, left: 16, right: 16),
              child: Text(
                datamasak.description,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Text('Bahan - bahan',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                datamasak.recipe,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Background color
              ),
              child: const Text(
                'Masak Sekarang',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                fontFamily: 'lato'
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}


class _FavoriteState extends State<Favorite> {
  bool isFavorite = false;


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}







