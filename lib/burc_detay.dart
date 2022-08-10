import 'package:horoscope_app/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope secilenBurc;
  const HoroscopeDetail({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  _HoroscopeDetailState createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarRengi = Colors.purple;
  Color listTileRengi = Colors.purple.shade200;
  late PaletteGenerator _generator;
  @override
  void initState() {
    super.initState();
    appBarRengiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //  automaticallyImplyLeading: true,
            expandedHeight: 300,
            backgroundColor: appBarRengi,
            //  elevation: 5,
            //onStretchTrigger: (){},
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.secilenBurc.horoscopeName,
                style:
                    TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
              ),
              centerTitle: true,
              background: Image.asset(
                'assets/images/' + widget.secilenBurc.horoscopeBigPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              color: listTileRengi,
              shadowColor: Colors.black,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Text(
                    widget.secilenBurc.horoscopeDetail,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appBarRengiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage(
        'assets/images/${widget.secilenBurc.horoscopeBigPicture}',
      ),
    );
    appBarRengi = _generator.vibrantColor!.color;
    listTileRengi = _generator.lightVibrantColor!.color;

    setState(() {});
  }
}

/* WidgetsBinding.instance
        .addPostFrameCallback((_) => yourFunction(context));
  }

  yukarda yazılan kod parçacığı ilk önce buildleri yapıp sonra fonksiyonları yapmaya yarıyor.
  yani ilk önce tıklandığında sayfa gelsin daha sonra appbar rengini bul diyor.Böylelikle hata alınmamış olunuyor.
* */
