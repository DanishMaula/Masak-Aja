import 'package:flutter/material.dart';
import 'package:masak_aja/model/data_masak.dart';
import 'package:masak_aja/screen/detail_screen.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorit saya',
        style: TextStyle(fontFamily: 'lato',
        color: Colors.white),),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataMasak masak = dataMasakList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return DetailScreen(dataMasak: masak,);
                  }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(masak.image),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            masak.name,
                            style: TextStyle(fontSize: 16.0,fontFamily: 'lato',),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(masak.description,
                            style: TextStyle(fontSize: 15.0,fontFamily: 'lato'),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
        itemCount: dataMasakList.length,
      ),
    );
  }
}
