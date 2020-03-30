import 'package:flutter/material.dart';
//import  terlebih  dahulu  halaman  yang  diperlukan
import './detail_produk.dart';

//Top  Level/Root
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First  App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product  Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "BUKET BUNGA",
                    description: "Buket bunga bisa request model buket ",
                    price: 40000,
                    image: "bunga1.jpg",
                    star: 2,
                  ),
                ));
              },
              child: ProductBox(
                name: "BUKET BUNGA",
                description:
                    "Buket bunga bisa request model buket, ukuran juga bisa di request",
                price: 40000,
                image: "bunga1.jpg",
              ),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "VAS BUNGA",
                      description: "Tempat Bunga dan jenis bunga bisa Request",
                      price: 60000,
                      image: "bunga3.jpg",
                      star: 3,
                    ),
                  ));
                },
                child: ProductBox(
                  name: "VAS BUNGA",
                  description: "Tempat Bunga dan jenis bunga bisa Request",
                  price: 60000,
                  image: "bunga3.jpg",
                )),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "BUKET BUNGA BOX",
                    description: "Jenis Box Bunga sesuai keinginanan ",
                    price: 55000,
                    image: "bunga4.jpg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                name: "BUKET BUNGA BOX",
                description: "Jenis Box Bunga sesuai keinginanan",
                price: 55000,
                image: "bunga4.jpg",
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "KARANGAN BUNGA",
                    description:
                        "Bentuk dan jenis karangan bunga sesuai keinginan pembeli",
                    price: 350000,
                    image: "bunga11.jpg",
                    star: 3,
                  ),
                ));
              },
              child: ProductBox(
                name: "KARANGAN BUNGA",
                description:
                    "Bentuk dan jenis karangan bunga sesuai keinginan pembeli",
                price: 350000,
                image: "bunga11.jpg",
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "MAWAR TANGKAI",
                    description:
                        "Menjual mawar tangkai dengan kualitas terbaik",
                    price: 3000,
                    image: "mawar.jpg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                name: "MAWAR TANGKAI",
                description: "Menjual mawar tangkai dengan kualitas terbaik",
                price: 3000,
                image: "mawar.jpg",
              ),
            ),
          ],
        ));
  }
}

//menggunakan  widget  StatelessWidget
class ProductBox extends StatelessWidget {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
//menggunakan  widget  container
    return Container(
//padding
        padding: EdgeInsets.all(2),
        //  height:  120,
        //menggunakan  widget  card
        child: Card(
            //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children  digunakan  untuk  menampung  banyak  widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child  digunakan  untuk  menampung  satu  widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat  tampilan  secara  vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini  isi  tampilan  vertikal  tersebut
                        children: <Widget>[
                          //menampilkan  variabel  menggunakan  widget  text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price:  " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan  widget  icon    dibungkus  dengan  row
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.deepOrange,
                                  ),
                                  Icon(Icons.star,
                                      size: 10, color: Colors.orange),
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
