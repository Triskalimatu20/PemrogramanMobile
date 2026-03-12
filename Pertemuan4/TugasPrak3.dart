//--Required Parameter--
void tampilNama(String nama) {
  print("Nama: $nama");
}

// void main() {
//   tampilNama("Triskalimatu");
// }

//--Optional Positional Parameter--
void tampilData(String nama, [int? umur]) {
  print("Nama: $nama");
  print("Umur: $umur");
}

// void main() {
//   tampilData("Triskalimatu");
// }

//--Named Parameter--
void tampilInfo({String? nama, int? umur}) {
  print("Nama: $nama");
  print("Umur: $umur");
}

// void main() {
//   tampilInfo(umur: 20, nama: "Triskalimatu");
// }

// --Required Named Parameter--
void tampilDetail({required String nama, required int umur}) {
  print("Nama: $nama");
  print("Umur: $umur");
}

void main() {
  tampilDetail(nama: "Triskalimatu", umur: 20);
}
