void main() {
  var data = (3, 5);
  print('Record awal: $data');

  var hasil = tukar(data);
  print('Record setelah ditukar: $hasil');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('Triskalimatu', 244107060025);
  print(mahasiswa);

  var mahasiswa2 = ('Triskalimatu', a: 244107060025, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Triskalimatu'
  print(mahasiswa2.a); // Prints 244107060025
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
