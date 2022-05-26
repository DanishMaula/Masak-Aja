import 'package:flutter/material.dart';
import 'package:masak_aja/model/data_masak.dart';

class AsianFood extends StatelessWidget {
  final String title;
  

  const AsianFood({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,
        style: TextStyle(fontFamily: 'lato',
        color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded,
          color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
        Card(
        elevation: 5,
        color: Colors.white,
        margin: EdgeInsets.only(top: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://i.ibb.co/JkMd6Xx/onigiri-750x440.jpg",
                  height: 150,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Onigiri',
                          style: TextStyle(
                              fontFamily: 'lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(dataMasakList[4].description,
                            style: TextStyle(
                                fontFamily: 'lato',
                                fontSize: 15,
                            color: Colors.grey[700])),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          Card(
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.only(top: 24),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              width: 100,
              child: Row(
                crossAxisAlignment:  CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.ibb.co/Fq4hJc7/Resep-Salad-Sayur.jpg",
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salad',
                              style: TextStyle(
                                  fontFamily: 'lato',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Text(dataMasakList[5].description,
                                style: TextStyle(
                                    fontFamily: 'lato',
                                    fontSize: 15,
                                color: Colors.grey[700])),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.only(top: 24),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              width: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i0.wp.com/resepkoki.id/wp-content/uploads/2016/04/Resep-Soto-Padang.jpg?fit=1572%2C1547&ssl=1",
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Soto Padang',
                              style: TextStyle(
                                  fontFamily: 'lato',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Text(dataMasakList[6].description,
                                style: TextStyle(
                                    fontFamily: 'lato',
                                    fontSize: 15,
                                color: Colors.grey[700])),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.only(top: 24),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              width: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.ibb.co/Bc2KYyp/download-2.jpg",
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kebab',
                              style: TextStyle(
                                  fontFamily: 'lato',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Text(dataMasakList[7].description,
                                style: TextStyle(
                                    fontFamily: 'lato',
                                    fontSize: 15,
                                color: Colors.grey[700])),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}





