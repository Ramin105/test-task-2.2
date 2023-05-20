//! Bank sistemi bizdən müştərilərin adlarını və kartdakı vəsaitlərini saxlamağımızı tələb edir
//!bir müştərinin ən azı 2 kartı olmalıdır
//! Hər bir müstərinin kart vəsaiti yoxlanılmalıdı
//! Əgər kartdakı vəsait 200-dən çoxdursan vəsaitin üzərinə 10 azn əlavə edilməlidi

class Musteri {
  String ad;
  List<double> kartlar;

  Musteri(this.ad, this.kartlar);

  void vesaitelave() {
    for (int i = 0; i < kartlar.length; i++) {
      if (kartlar[i] > 200) {
        kartlar[i] += 10;
      }
    }
  }
}

void main() {
  Musteri musteri1 = new Musteri("musteri1", [150, 300]);
  Musteri musteri2 = new Musteri("musteri2", [100, 250]);

  musteri1.vesaitelave();
  musteri2.vesaitelave();

  print("Müşteri 1: ${musteri1.ad} - Kartlar: ${musteri1.kartlar}");
  print("Müşteri 2: ${musteri2.ad} - Kartlar: ${musteri2.kartlar}");
  }

