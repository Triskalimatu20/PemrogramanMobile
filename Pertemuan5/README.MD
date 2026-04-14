# Praktikum 1: Membuat Project Flutter Baru

## Langkah1:

Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

![Hasil Praktikum](images/praktikum1_langkah1.png)

## Langkah 2:

Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

![Hasil Praktikum](images/praktikum1_langkah2.png)

## Langkah 3:

Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

![Hasil Praktikum](images/praktikum1_langkah3.png)

## Langkah 4:

Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.

![Hasil Praktikum](images/praktikum1_langkah4.png)

# Praktikum 2: Menghubungkan Perangkat Android atau Emulator

Menjalankan aplikasi ke perangkat fisik (device Android atau iOS)

## 3. Mengaktifkan proses debug USB

Agar Android Studio dapat berkomunikasi dengan perangkat Android, Anda harus mengaktifkan proses debug USB di setelan Opsi developer di perangkat.

Untuk menampilkan opsi developer dan mengaktifkan Proses debug USB:

1. Di perangkat Android, ketuk Settings > About phone.
2. Ketuk Build number tujuh kali.
3. Jika diminta, masukkan sandi atau PIN perangkat. Anda tahu Anda telah berhasil saat melihat pesan You are now a developer!.

![Hasil Praktikum](images/praktikum2_langkah3_no3.png)

4. Kembali ke Settings, lalu ketuk System > Developer options.
5. Jika Anda tidak melihat Developer options, ketuk Advanced options.
6. Ketuk Opsi developer, lalu ketuk tombol Proses debug USB untuk mengaktifkannya.

![Hasil Praktikum](images/praktikum2_langkah3_no6.png)

# Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum

## Langkah 11:

Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

![Hasil Praktikum](images/praktikum2_langkah11.png)

## Langkah 12:

![Hasil Praktikum](images/praktikum2_langkah12.png)

# Praktikum 4: Menerapkan Widget Dasar

## Langkah 1: Text Widget

Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.

![Hasil Praktikum](images/praktikum4_langkah1.png)

Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

![Hasil Praktikum](images/praktikum4_langkah1-2.png)

## Langkah 2: Image Widget

Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

![Hasil Praktikum](images/praktikum4_langkah2-1.png)

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

![Hasil Praktikum](images/praktikum4_langkah2-2.png)

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

![Hasil Praktikum](images/praktikum4_langkah2-3.png)

# Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino

## Langkah 1: Cupertino Button dan Loading Bar

Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

![Hasil Praktikum](images/praktikum5_langkah1.png)

![Hasil Praktikum](images/praktikum5_langkah1hasil.png)

## Langkah 2: Floating Action Button (FAB)

Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

![Hasil Praktikum](images/praktikum5_langkah2.png)

![Hasil Praktikum](images/praktikum5_langkah2hasil.png)

## Langkah 3: Scaffold Widget

Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.

![Hasil Praktikum](images/praktikum5_langkah3.png)

![Hasil Praktikum](images/praktikum5_langkah3hasil.png)

## Langkah 4: Dialog Widget

Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.

![Hasil Praktikum](images/praktikum5_langkah4.png)

![Hasil Praktikum](images/praktikum5_langkah4hasil.gif)

## Langkah 5: Input dan Selection Widget

Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:

![Hasil Praktikum](images/praktikum5_langkah5.png)

![Hasil Praktikum](images/praktikum5_langkah5hasil.gif)

## Langkah 6: Date and Time Pickers

Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

![Hasil Praktikum](images/praktikum5_langkah6.png)

![Hasil Praktikum](images/praktikum5_langkah6hasil.gif)


# Tugas Praktikum Codelabs
## Add a button

![Hasil Praktikum](images/codelabs4.gif)
## Make the app prettier

![Hasil Praktikum](images/codelabs5.gif)
## add functionality

![Hasil Praktikum](images/codelabs6.gif)
## add navigation rail

![Hasil Praktikum](images/codelabs7.gif)
## add a new page

![Hasil Praktikum](images/codelabs8.gif)

## next steps

![Hasil Praktikum](images/codelabs9.gif)
