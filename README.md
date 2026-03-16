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
1. MaterialApp

Widget utama untuk menjalankan aplikasi berbasis Material Design.
Digunakan untuk mengatur tema aplikasi seperti light mode dan dark mode, serta menentukan halaman awal aplikasi.

2. Scaffold

Widget dasar yang menyediakan struktur tampilan aplikasi seperti AppBar, Body, dan FloatingActionButton.

3. AppBar

Digunakan sebagai header aplikasi yang berada di bagian atas layar dan menampilkan judul halaman serta tombol dark mode.

4. Text

Widget untuk menampilkan teks seperti:

Judul halaman

Nama layanan

Kategori layanan

Alamat layanan

Deskripsi layanan

5. TextField

Digunakan untuk menerima input dari pengguna, seperti:

Username

Password

Nama layanan

Alamat layanan

Deskripsi layanan

6. ElevatedButton

Tombol yang digunakan untuk menjalankan aksi seperti:

Login

Register

Simpan data layanan

7. TextButton

Digunakan untuk tombol navigasi seperti berpindah dari Login ke Register.

8. ListView.builder

Widget yang digunakan untuk menampilkan daftar layanan secara dinamis dari database Supabase.

9. Card

Digunakan untuk menampilkan setiap layanan dalam bentuk kartu agar tampilan lebih rapi dan terpisah.

10. ListTile

Widget yang memudahkan penyusunan tampilan list dengan komponen:

ikon

judul

subtitle

aksi tombol

11. CircleAvatar

Digunakan untuk menampilkan ikon kategori layanan dengan background warna.

12. Icon

Widget untuk menampilkan ikon seperti:

ikon kategori layanan

ikon edit

ikon delete

ikon dark mode

13. IconButton

Digunakan sebagai tombol berbentuk ikon untuk:

mengedit layanan

menghapus layanan

mengaktifkan dark mode

14. FloatingActionButton

Tombol bulat yang digunakan untuk menambahkan layanan baru.

15. DropdownButtonFormField

Widget untuk menampilkan pilihan kategori layanan seperti:

Kesehatan

Pendidikan

Administrasi

Transportasi

Keamanan

16. AlertDialog

Digunakan untuk menampilkan form tambah dan edit layanan dalam bentuk pop-up dialog.

17. Column

Widget untuk menyusun komponen secara vertikal.

18. Row

Digunakan untuk menyusun widget secara horizontal, misalnya tombol edit dan delete.

19. Padding

Memberikan jarak antara widget dengan tepi layar agar tampilan lebih rapi.

20. SizedBox

Digunakan untuk memberikan jarak antar widget.

21. RefreshIndicator

Widget yang memungkinkan pengguna melakukan refresh data dengan swipe ke bawah.





