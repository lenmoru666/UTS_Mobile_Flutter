
<a name="readme-top"></a>

<br />
<div align="center">
  <h3 align="center">PEMROGRAMAN MOBILE</h3>
  <br><br>
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="assets/polinema.png" alt="Logo" width="450" height="350">
  </a>
  <br><br>
  <h3 align="center">Falendika Tegar Pratama</h3>
  <h3 align="center">3G - D4TI</h3>
  <h3 align="center">2141720107</h3>
</div>

<br>

<h1 align="center">Laporan Praktikum Minggu Ke-8</h1>

<br>

<!-- ABOUT THE PROJECT -->
# Praktikum 5: Membangun Navigasi di Flutter

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Materi ini dapat dimasukkan ke Laporan Praktikum folder Week atau Pertemuan 08.

#### Tampilan akhir yang akan Anda buat

<img src="assets/1.png" width="40%">

<br>

Pada praktikum 5 ini anda akan belajar mengenai pembangunan aplikasi bergerak multi halaman. Aplikasi yang dikembangkan berupa kasus daftar barang belanja. Pada aplikasi ini anda akan belajar untuk berpindah halaman dan mengirimkan data ke halaman lainnya. Gambaran mockup hasil akhir aplikasi dapat anda lihat pada gambar di atas (mockup dibuat sederhana, sehingga Anda mempunyai banyak ruang untuk berkreasi). Desain aplikasi menampilkan sebuah ListView widget yang datanya bersumber dari List. Ketika item ditekan, data akan dikirimkan ke halaman berikutnya.

### Langkah 1: Siapkan project baru

Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

<img src="assets/2.png" width="20%">

<br>

### Langkah 2: Mendefinisikan Route

Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.

<img src="assets/3.png" width="20%">

<br>

<img src="assets/4.png" width="40%">

<br>

<img src="assets/5.png" width="40%">

<br>

### Langkah 3: Lengkapi Kode di main.dart

Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

<img src="assets/6.png" width="40%">

<br>

### Langkah 4: Membuat data model

Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

<img src="assets/8.png" width="20%">

<br>

<img src="assets/7.png" width="40%">

<br>

### Langkah 5: Lengkapi kode di class HomePage

Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.

<img src="assets/9.png" width="40%">

<br>

### Langkah 6: Membuat ListView dan itemBuilder

Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.

<img src="assets/10.png" width="40%">

<br>

<img src="assets/11.png" width="40%">

<br>

Jalankan aplikasi pada emulator atau pada device anda.

#### Hasil Output

<img src="assets/12.png" width="20%">

<br>

### Langkah 7: Menambahkan aksi pada ListView

Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.

Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

<img src="assets/13.png" width="40%">

<br>

Jalankan aplikasi kembali dan pastikan ListView dapat disentuh dan berpindah ke halaman berikutnya. Periksa kembali jika terdapat kesalahan.

#### Hasil Output

<img src="assets/12.png" width="20%">

<br>

<img src="assets/14.png" width="20%">

<br>

# Tugas Praktikum 2

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

<img src="assets/15.png" width="40%">

<br>

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook navigation/navigate-with-arguments)

<img src="assets/16.png" width="40%">

<br>

#### Hasil Output

<img src="assets/12.png" width="20%">

<br>

<img src="assets/17.png" width="20%">

<br>

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

Code item.dart

<img src="assets/18.png" width="40%">

<br>

Code home_page.dart

<img src="assets/19.png" width="40%">

<br>

<img src="assets/20.png" width="40%">

<br>

<img src="assets/21.png" width="40%">

<br>

Code item_dart.dart

<img src="assets/22.png" width="40%">

<br>

<img src="assets/23.png" width="40%">

<br>

<img src="assets/24.png" width="40%">

<br>

#### Hasil Output

<img src="assets/25.png" width="20%">

<br>

<img src="assets/26.png" width="20%">

<br>

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

<img src="assets/27.png" width="40%">

<br>

<img src="assets/28.png" width="40%">

<br>

#### Hasil Output

<img src="assets/1.gif" width="20%">

<br>

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

<img src="assets/29.png" width="40%">

<br>

<img src="assets/30.png" width="40%">

<br>

#### Hasil Output

<img src="assets/31.png" width="20%">

<br>

<img src="assets/32.png" width="20%">

<br>