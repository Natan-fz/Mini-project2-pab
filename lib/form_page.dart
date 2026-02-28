import 'package:flutter/material.dart';
import 'service_model.dart';

class FormPage extends StatefulWidget {
  final Service? service;

  FormPage({this.service});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController deskripsiController;

  String? selectedKategori;

  final List<String> kategoriList = [
    "Administrasi Kependudukan",
    "Pelayanan Pendidikan",
    "Pelayanan Kesehatan",
    "Pelayanan Transportasi",
  ];

  @override
  void initState() {
    super.initState();
    namaController =
        TextEditingController(text: widget.service?.nama ?? "");
    alamatController =
        TextEditingController(text: widget.service?.alamat ?? "");
    deskripsiController =
        TextEditingController(text: widget.service?.deskripsi ?? "");
    selectedKategori = widget.service?.kategori;
  }

  void simpanData() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(
        context,
        Service(
          nama: namaController.text,
          alamat: alamatController.text,
          kategori: selectedKategori!,
          deskripsi: deskripsiController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.service == null ? "Tambah Layanan" : "Edit Layanan"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(labelText: "Nama Layanan"),
                validator: (value) =>
                    value!.isEmpty ? "Tidak boleh kosong" : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: alamatController,
                decoration: InputDecoration(labelText: "Alamat"),
                validator: (value) =>
                    value!.isEmpty ? "Tidak boleh kosong" : null,
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: selectedKategori,
                decoration: InputDecoration(labelText: "Kategori"),
                items: kategoriList
                    .map((kategori) => DropdownMenuItem(
                          value: kategori,
                          child: Text(kategori),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedKategori = value;
                  });
                },
                validator: (value) =>
                    value == null ? "Pilih kategori" : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: deskripsiController,
                decoration:
                    InputDecoration(labelText: "Deskripsi Layanan"),
                maxLines: 3,
                validator: (value) =>
                    value!.isEmpty ? "Tidak boleh kosong" : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: simpanData,
                child: Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}