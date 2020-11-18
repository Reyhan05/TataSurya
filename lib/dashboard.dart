import 'package:flutter/material.dart';

import 'detail_page.dart';

class Dashboard extends StatelessWidget {
  List<String> itemNama = [
    "Matahari",
    "Merkurius",
    "Bumi",
    "Mars",
    "Venus",
    "Jupiter",
    "Saturnus",
    "Uranus",
  ];

  List<String> itemDesc = [
    "Matahari memiliki massa sebesar 332.830 kali massa bumi, dengan massa yang besar ini matahari mampu mengalami kepadatan inti yang mendukung terjadinya reaksi fusi nuklir dan mampu menghasilkan jumlah energi yang besar.Energi yang dihasilkan ini merambat melalui luar angkasa dalam bentuk gelombang elektromagnetik yang kita kenal sebagaicahaya tampak. Lapisan-lapisan matahari terdiri dari bagian inti, fotosfer, kromosfer dan korona.",
    "Merkurius adalah planet yang paling dekat dengan matahari. Jarak dari Merkurius ke matahari hanya sekitar 58 juta km. Dengan jarak yang dekat ini, pada siang hari suhu permukaan Merkurius mencapai 450 derajat Celcius dan pada malam hari sekitar 180 derajat Celcius. Planet merkurius adalah planet terkecil disistem tata surya karena hanya memiliki diameter 4862 km dan tidak memiliki satelit alami. Oleh karena itu, merkurius membutuhkan waktu 88 hari untuk mengelilingi matahari dan memiliki periode rotasi 59 hari.",
    "Merupakan planet yang paling dekat dengan matahari, jarak Merkurius ke matahari sekitar 58 juta km. Merupakan planet paling kecil di tata surya, memiliki diameter 4.862 km, Mempunyai masa revolusi (mengelilingi matahari) selama 88 hari, Mempunyai banyak kawah besar di permukaannya, karena letaknya yeng dekat dengan matahari ",
    "Planet mars adalah planet keempatdari matahari dan planet kedua terkecil setelah merkurius yang memiliki diameter sekitar 6.800 km. Mars memiliki jarak ke matahari sekitar 228 juta km dengan waktu satu kali orbit selama 687 hari dan periode rotasi sekitar 24,6 jam. Kata Mars diambil dari bahasa Romawi yang berarti dewa perang, selain itu Mars juga sering disebut sebagai planet merah karena permukaannya yang berwarna merah ketika dilihat dengan mata telanjang, hal ini disebabkan karena reaksi oksida besi yang terjadi pada permukaan mars.",
    "Venus adalah planet kedua terdekat dengan matahari yang berjarak sekitar 108 juta km. Planet Venus tidak memiliki satelit seperti bumi tetapi Venus adalah benda langit paling terang setelah matahari dan bulan.",
    "Jupiter adalah planet kelima dari matahari dan merupakan planet yang terbesar dalam sistem tata surya. Jupiter memiliki diameter pada permukaannya sekitar 142.860 km dan memiliki volume yang mampu menampung 1.300 kali bumi.",
    "Saturnus adalah planet keenam dari Matahari dan merupakan planet terbesar kedua setelah Jupiter. Kita tahu bahwa planet Saturnus adalah planet paling cantik diantara planet lainnya karena saturnus memiliki cincin yang mengelilingi planet.",
    "Uranus adalah planet ketujuh dari matahari dan termasuk planet terbesar ketiga setelah Jupiter dan Saturnus. Planet Uranus terkenal dengan sebutannya sebagai planet paling dingin di tata surya. Hal ini karena suhu minimun disana bisa mencapai -224 celsius.",
  ];

  List<String> itemImage = [
    "https://i0.wp.com/saintif.com/wp-content/uploads/2019/09/images-12.jpeg?w=640&ssl=1",
    "https://i2.wp.com/saintif.com/wp-content/uploads/2019/09/Merkurius.jpeg?w=600&ssl=1",
    "https://cdn.utakatikotak.com/finder/planet%20bumi.jpg",
    "https://cdn.utakatikotak.com/finder/planet%20mars.jpeg",
    "https://i1.wp.com/saintif.com/wp-content/uploads/2019/09/Venus-planet.jpg?resize=1024%2C576&ssl=1",
    "https://i0.wp.com/saintif.com/wp-content/uploads/2019/09/images-16.jpeg?w=554&ssl=1",
    "https://i2.wp.com/saintif.com/wp-content/uploads/2019/09/images-19.jpeg?w=619&ssl=1",
    "https://i2.wp.com/saintif.com/wp-content/uploads/2019/09/images-18.jpeg?w=610&ssl=1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tata',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Text('Surya',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500))
          ],
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(itemNama.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              nama: itemNama[index],
                              image: itemImage[index],
                              desc: itemDesc[index],
                            )));
              },
              child: Card(
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 23.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            itemImage[index],
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        itemNama[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
