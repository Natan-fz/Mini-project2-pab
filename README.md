**DESKRIPSI APLIKASI**

Aplikasi Layanan Umum Samarinda merupakan aplikasi berbasis Flutter yang dirancang untuk menampilkan dan mengelola informasi layanan publik di Kota Samarinda. Aplikasi ini menyediakan sistem pengelolaan data layanan secara sederhana dengan fitur tambah, ubah, dan hapus data.

Setiap layanan yang ditampilkan memiliki beberapa atribut utama, yaitu nama layanan, alamat, kategori layanan, dan deskripsi layanan. Data layanan ditampilkan dalam bentuk daftar menggunakan tampilan kartu (card) yang telah disesuaikan dengan warna dan ikon berdasarkan kategori layanan.

**FITUR APLIKASI**

1. Menampilkan Daftar Layanan (Read)
Aplikasi menampilkan seluruh data layanan yang tersedia dalam bentuk daftar menggunakan ListView.builder.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/cef45680-758e-4679-b254-82f373178e9f" />


3. Menambahkan Data Layanan (Create)
Pengguna dapat menambahkan layanan baru melalui halaman form dengan mengisi seluruh field yang tersedia.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/fd6ccb45-ab8c-424e-9cc3-2ff935167f47" />
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/b3733b15-c5ec-444b-832f-667911aabb9f" />


5. Mengubah Data Layanan (Update)
Pengguna dapat mengedit data layanan yang telah ada dengan menekan tombol edit pada masing-masing item layanan.
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/0d66cdf3-2048-45c6-99c9-ca8904ec5028" />


6. Menghapus Data Layanan (Delete)
Pengguna dapat menghapus layanan dari daftar dengan menekan tombol delete.
<img width="1914" height="1072" alt="image" src="https://github.com/user-attachments/assets/e8f6e66c-78c2-4836-81a7-9a064f5e1f5d" />


7. Kategori dengan Ikon dan Warna Berbeda
Setiap kategori layanan memiliki ikon dan warna yang berbeda untuk membedakan jenis layanan secara visual.

8. Navigasi Antar Halaman
Aplikasi menggunakan sistem multi-page navigation dengan Navigator untuk berpindah halaman dan mengirim data kembali ke halaman sebelumnya.

WIDGET YANG DIGUNAKAN
MaterialApp
Digunakan sebagai root aplikasi dan untuk mengatur tema serta halaman awal aplikasi.

Scaffold
Menjadi struktur utama halaman yang berisi AppBar, body, dan FloatingActionButton.

AppBar
Menampilkan judul halaman pada bagian atas aplikasi.

ListView.builder
Digunakan untuk menampilkan daftar layanan secara dinamis berdasarkan jumlah data yang tersedia.

Card
Menampilkan setiap layanan dalam bentuk kartu agar tampilan lebih terstruktur dan rapi.

ListTile
Digunakan untuk menyusun elemen dalam Card seperti ikon, judul, deskripsi, dan tombol aksi.

CircleAvatar
Digunakan untuk menampilkan ikon kategori layanan dengan latar belakang berwarna.

Icon dan IconButton
Digunakan sebagai tombol aksi seperti edit dan delete serta sebagai ikon kategori layanan.

FloatingActionButton
Digunakan untuk menambahkan layanan baru.

Navigator
Digunakan untuk navigasi antar halaman serta mengirim dan menerima data.

Form
Digunakan untuk membungkus input agar dapat dilakukan validasi sebelum data disimpan.

TextFormField
Digunakan untuk input teks seperti nama layanan, alamat, dan deskripsi.

DropdownButtonFormField
Digunakan untuk memilih kategori layanan.

ElevatedButton
Digunakan sebagai tombol untuk menyimpan data.

GlobalKey<FormState>
Digunakan untuk mengontrol dan melakukan validasi form.
