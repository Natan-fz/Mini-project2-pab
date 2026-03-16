class Service {
  final int? id;
  final String nama;
  final String alamat;
  final String kategori;
  final String deskripsi;

  Service({
    this.id,
    required this.nama,
    required this.alamat,
    required this.kategori,
    required this.deskripsi,
  });

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      id: map['id'],
      nama: map['nama'],
      alamat: map['alamat'],
      kategori: map['kategori'],
      deskripsi: map['deskripsi'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'alamat': alamat,
      'kategori': kategori,
      'deskripsi': deskripsi,
    };
  }
}