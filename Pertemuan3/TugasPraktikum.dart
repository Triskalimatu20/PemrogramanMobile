void main() {
  String namalengkap = "Triskalimatu Sya'adah";
  String nim = "244107060025";

  for (int angka = 0; angka <= 201; angka++) {
    bool isPrima = true;

    if (angka < 2) {
      isPrima = false;
    } else {
      for (int i = 2; i <= angka ~/ 2; i++) {
        if (angka % i == 0) {
          isPrima = false;
          break;
        }
      }
    }

    if (isPrima) {
      print("Bilangan prima: $angka");
      print("Nama: $namalengkap");
      print("NIM: $nim");
      print("------------------------");
    }
  }
}
