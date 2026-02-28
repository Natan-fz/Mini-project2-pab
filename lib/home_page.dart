import 'package:flutter/material.dart';

import 'service_repository.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  final ServiceRepository repository;

  const HomePage({super.key, required this.repository});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  IconData getIcon(String kategori) {
    switch (kategori) {
      case "Administrasi Kependudukan":
        return Icons.badge;
      case "Pelayanan Pendidikan":
        return Icons.school;
      case "Pelayanan Kesehatan":
        return Icons.local_hospital;
      case "Pelayanan Transportasi":
        return Icons.flight;
      default:
        return Icons.business;
    }
  }

  Color getColor(String kategori) {
    switch (kategori) {
      case "Administrasi Kependudukan":
        return Colors.indigo;
      case "Pelayanan Pendidikan":
        return Colors.green;
      case "Pelayanan Kesehatan":
        return Colors.red;
      case "Pelayanan Transportasi":
        return Colors.orange;
      default:
        return Colors.blueGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final services = widget.repository.getServices();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Layanan Umum Samarinda"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          final warna = getColor(service.kategori);

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [warna.withOpacity(0.1), Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: CircleAvatar(
                  backgroundColor: warna,
                  child: Icon(
                    getIcon(service.kategori),
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  service.nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    "${service.kategori}\n${service.alamat}\n${service.deskripsi}",
                  ),
                ),
                isThreeLine: true,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.orange),
                      onPressed: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FormPage(service: service),
                          ),
                        );
                        if (result != null) {
                          setState(() {
                            widget.repository.update(index, result);
                          });
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          widget.repository.delete(index);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => FormPage()),
          );
          if (result != null) {
            setState(() {
              widget.repository.add(result);
            });
          }
        },
      ),
    );
  }
}