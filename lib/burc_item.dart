import 'package:horoscope_app/burc_detay.dart';
import 'package:horoscope_app/model/burc.dart';
import 'package:flutter/material.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listelenmisBurc;
  const HoroscopeItem({required this.listelenmisBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HoroscopeDetail(secilenBurc: listelenmisBurc),
            ),
          );
        },
        leading: Image.asset(
          'assets/images/' + listelenmisBurc.horoscopeLittlePicture,
        ),
        title: Text(
          listelenmisBurc.horoscopeName,
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text(listelenmisBurc.horoscopeHistory),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
