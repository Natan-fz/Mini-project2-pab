**DESKRIPSI APLIKASI**

Aplikasi Layanan Umum Samarinda merupakan aplikasi berbasis Flutter yang dirancang untuk menampilkan dan mengelola informasi layanan publik di Kota Samarinda. Aplikasi ini menyediakan sistem pengelolaan data layanan secara sederhana dengan fitur tambah, ubah, dan hapus data.

Setiap layanan yang ditampilkan memiliki beberapa atribut utama, yaitu nama layanan, alamat, kategori layanan, dan deskripsi layanan. Data layanan ditampilkan dalam bentuk daftar menggunakan tampilan kartu (card) yang telah disesuaikan dengan warna dan ikon berdasarkan kategori layanan.

**FITUR APLIKASI**

1. Menampilkan Daftar Layanan (Read)
Aplikasi menampilkan seluruh data layanan yang tersedia dalam bentuk daftar menggunakan ListView.builder.

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/43999adb-25f1-4484-bdf3-ed61d1575967" />


3. Menambahkan Data Layanan (Create)
Pengguna dapat menambahkan layanan baru melalui halaman form dengan mengisi seluruh field yang tersedia.

<img width="1912" height="1079" alt="image" src="https://github.com/user-attachments/assets/f1ee02f8-9e20-4d3b-94e8-38d765dc3d10" />

<img width="1918" height="1078" alt="image" src="https://github.com/user-attachments/assets/0333b25e-a5b5-4b61-9933-3b58cfb7bcf7" />



5. Mengubah Data Layanan (Update)
Pengguna dapat mengedit data layanan yang telah ada dengan menekan tombol edit pada masing-masing item layanan.

<img width="1917" height="1079" alt="image" src="https://github.com/user-attachments/assets/5a115818-037f-4620-918d-6c98d75286f7" />

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/698b3acd-fda4-48e3-9e0c-ff0d6c9c095a" />



6. Menghapus Data Layanan (Delete)
Pengguna dapat menghapus layanan dari daftar dengan menekan tombol delete.

<img width="1919" height="1078" alt="image" src="https://github.com/user-attachments/assets/2dc8f2ef-af3d-4aa1-8f09-1da9ddad8ce9" />

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/557d8955-b303-4ceb-adae-3709c6ad6e17" />


7. Kategori dengan Ikon dan Warna Berbeda
Setiap kategori layanan memiliki ikon dan warna yang berbeda untuk membedakan jenis layanan secara visual.

8. Navigasi Antar Halaman
Aplikasi menggunakan sistem multi-page navigation dengan Navigator untuk berpindah halaman dan mengirim data kembali ke halaman sebelumnya.

9. login dan register

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/35fb64f1-68a9-4678-9ce7-dbc232ab8d44" />

10. dark mode dan light mode

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/65f75d8e-0803-42bb-bdbf-a1c526477fcb" />

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/67781337-f955-4058-abc6-3b269d6701c9" />

WIDGET YANG DIGUNAKAN
-MaterialApp
Digunakan sebagai root aplikasi dan untuk mengatur tema serta halaman awal aplikasi.

-Scaffold
Menjadi struktur utama halaman yang berisi AppBar, body, dan FloatingActionButton.

-AppBar
Menampilkan judul halaman pada bagian atas aplikasi.

-ListView.builder
Digunakan untuk menampilkan daftar layanan secara dinamis berdasarkan jumlah data yang tersedia.

-Card
Menampilkan setiap layanan dalam bentuk kartu agar tampilan lebih terstruktur dan rapi.

-ListTile
Digunakan untuk menyusun elemen dalam Card seperti ikon, judul, deskripsi, dan tombol aksi.

-CircleAvatar
Digunakan untuk menampilkan ikon kategori layanan dengan latar belakang berwarna.

-Icon dan IconButton
Digunakan sebagai tombol aksi seperti edit dan delete serta sebagai ikon kategori layanan.

-FloatingActionButton
Digunakan untuk menambahkan layanan baru.

-Navigator
Digunakan untuk navigasi antar halaman serta mengirim dan menerima data.

-Form
Digunakan untuk membungkus input agar dapat dilakukan validasi sebelum data disimpan.

-TextFormField
Digunakan untuk input teks seperti nama layanan, alamat, dan deskripsi.

-DropdownButtonFormField
Digunakan untuk memilih kategori layanan.

-ElevatedButton
Digunakan sebagai tombol untuk menyimpan data.

-GlobalKey<FormState>
Digunakan untuk mengontrol dan melakukan validasi form.





