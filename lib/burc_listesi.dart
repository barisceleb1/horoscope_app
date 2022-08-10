import 'package:horoscope_app/burc_item.dart';
import 'package:flutter/material.dart';

import 'data/strings.dart';
import 'model/burc.dart';
/*
class BurcListesi extends StatelessWidget {
   List<Burc>tumBurclar;
   BurcListesi(){
   tumBurclar=veriKaynaginiHazirla();
   }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/

class HoroscopeList extends StatelessWidget {
  late final List<Horoscope> allHoroscopes;
  HoroscopeList() {
    allHoroscopes = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade500,
          title: Center(
            child: Text(
              'BURÇLAR',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.white),
            ),
          ),
        ),
        body: Center(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(listelenmisBurc: allHoroscopes[index]);
          },
          itemCount: allHoroscopes.length,
        ),
        ),
    );
  }

  List<Horoscope> veriKaynaginiHazirla() {
    List<Horoscope> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];

      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

      Horoscope eklenecekBurc =
      Horoscope(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }

    return gecici;
  }
}
