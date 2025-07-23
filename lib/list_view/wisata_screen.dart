import 'package:flutter/material.dart';
import 'package:learning/list_view/detail_wisata.dart';
import 'package:learning/main_layout.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  //data
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Kebun Teh",
      "kota": "Lembang",
      "image": "images/kebun-teh.jpg",
      "desc": "Kebun teh dengan penghasilan tertinggi...",
    },
    {
      "nama": "Karang Taraje",
      "kota": "Semarang",
      "image": "images/karang-taraje.jpg",
      "desc": "pantai yang terletak di semarang...",
    },
    {
      "nama": "Keraton",
      "kota": "Bali",
      "image": "images/bali.jpg",
      "desc": "keraton teramai di bali...",
    },
    {
      "nama": "Prambanan",
      "kota": "Yogyakarta",
      "image": "images/prambanan.jpg",
      "desc": "wisata ini yang sering...",
    },
    {
      "nama": "Pantai Pangandaran",
      "kota": "Pangandaran",
      "image": "images/patai.jpg",
      "desc": "pantai yang sering ramai pengunjung...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.pinkAccent,
              Colors.indigoAccent,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailWisataScreen(
                          nama: wisataData[index]["nama"],
                          kota: wisataData[index]["kota"],
                          image: wisataData[index]["image"],
                          desc: wisataData[index]["desc"],
                        ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
