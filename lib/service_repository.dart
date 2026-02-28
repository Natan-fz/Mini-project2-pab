import 'service_model.dart';

class ServiceRepository {
  final List<Service> _services = [
    Service(
      nama: "Disdukcapil Samarinda",
      alamat: "Jl. Dahlia No. 12, Samarinda",
      kategori: "Administrasi Kependudukan",
      deskripsi: "Pembuatan KTP, KK, Akta Kelahiran dan dokumen identitas.",
    ),
    Service(
      nama: "SMP Negeri 1 Samarinda",
      alamat: "Jl. KH Khalid, Samarinda",
      kategori: "Pelayanan Pendidikan",
      deskripsi: "Sekolah negeri dan fasilitas belajar.",
    ),
  ];

  List<Service> getServices() => _services;

  void add(Service service) {
    _services.add(service);
  }

  void update(int index, Service service) {
    _services[index] = service;
  }

  void delete(int index) {
    _services.removeAt(index);
  }
}