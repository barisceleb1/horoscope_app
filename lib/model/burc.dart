class Horoscope {
  final String _horoscopeName;
  final String _horoscopeHistory;
  final String _horoscopeDetail;
  final String _horoscopeLittlePicture;
  final String _horoscopeBigPicture;

  Horoscope(this._horoscopeName, this._horoscopeHistory, this._horoscopeDetail, this._horoscopeLittlePicture,
      this._horoscopeBigPicture);

  @override
  String toString() {
    return '$_horoscopeName - $_horoscopeBigPicture';
  }
   get horoscopeName => this._horoscopeName;

   get horoscopeHistory => this._horoscopeHistory;

   get horoscopeDetail => this._horoscopeDetail;

   get horoscopeLittlePicture => this._horoscopeLittlePicture;

   get horoscopeBigPicture => this._horoscopeBigPicture;
}
