import 'package:flutter/material.dart';
import 'service_model.dart';
import 'service_repository.dart';

class FormPage extends StatefulWidget {

  final Service? service;

  const FormPage({super.key, this.service});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final namaController = TextEditingController();
  final alamatController = TextEditingController();
  final deskripsiController = TextEditingController();

  final repo = ServiceRepository();

  String? selectedKategori;

  final List<String> kategoriList = [
    "Administrasi",
    "Kesehatan",
    "Pendidikan",
    "Sosial",
    "Transportasi"
  ];

  @override
  void initState() {
    super.initState();

    if (widget.service != null) {
      namaController.text = widget.service!.nama;
      alamatController.text = widget.service!.alamat;
      deskripsiController.text = widget.service!.deskripsi;
      selectedKategori = widget.service!.kategori;
    }
  }

  void save() async {

    if (namaController.text.isEmpty ||
        alamatController.text.isEmpty ||
        deskripsiController.text.isEmpty ||
        selectedKategori == null) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Semua field harus diisi"),
        ),
      );

      return;
    }

    final service = Service(
      id: widget.service?.id,
      nama: namaController.text,
      alamat: alamatController.text,
      kategori: selectedKategori!,
      deskripsi: deskripsiController.text,
    );

    try {

      if (widget.service == null) {
        await repo.addService(service);
      } else {
        await repo.updateService(service);
      }

      Navigator.pop(context);

    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Terjadi kesalahan saat menyimpan data"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(
          widget.service == null
              ? "Tambah Layanan"
              : "Edit Layanan",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(

          children: [

            const Text(
              "Form Layanan Publik",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                labelText: "Nama Layanan",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.assignment),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: alamatController,
              decoration: const InputDecoration(
                labelText: "Alamat",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_on),
              ),
            ),

            const SizedBox(height: 15),

            DropdownButtonFormField<String>(
              initialValue: selectedKategori,
              items: kategoriList.map((kategori) {

                return DropdownMenuItem(
                  value: kategori,
                  child: Text(kategori),
                );

              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedKategori = value;
                });
              },

              decoration: const InputDecoration(
                labelText: "Kategori",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.category),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: deskripsiController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Deskripsi",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              height: 50,

              child: ElevatedButton(

                onPressed: save,

                child: Text(
                  widget.service == null
                      ? "Tambah Layanan"
                      : "Update Layanan",
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}