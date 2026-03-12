// Lexical Scope
// void main() {
//   var pesan = "Halo Triska";

//   void tampilPesan() {
//     print(pesan);
//   }
//   tampilPesan();
// }

// Lexical Closureus
Function buatCounter() {
  int hitung = 0;

  return () {
    hitung++;
    print(hitung);
  };
}

void main() {
  var counter = buatCounter();
  counter();
  counter();
  counter();
}
