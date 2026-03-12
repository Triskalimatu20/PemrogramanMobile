void main() {
  // Membuat list final dengan panjang 5 dan nilai awal null
  final List<String?> biodata = List.filled(5, null);

  biodata[1] = "Nama: Triskalimatu";
  biodata[2] = "NIM: 244107060025";

  print(biodata);
  print("Index 1: ${biodata[1]}");
  print("Index 2: ${biodata[2]}");
}
