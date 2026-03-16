import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final supabase = Supabase.instance.client;

  List layanan = [];

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  Future<void> ambilData() async {

    final data = await supabase
        .from('services')
        .select()
        .order('id');

    setState(() {
      layanan = data;
    });
  }

  Future<void> hapusData(int id) async {

    await supabase
        .from('services')
        .delete()
        .eq('id', id);

    ambilData();
  }

  IconData ikonKategori(String kategori) {

    switch (kategori) {

      case "Kesehatan":
        return Icons.local_hospital;

      case "Pendidikan":
        return Icons.school;

      case "Administrasi":
        return Icons.assignment;

      case "Transportasi":
        return Icons.directions_bus;

      case "Keamanan":
        return Icons.security;

      default:
        return Icons.miscellaneous_services;
    }
  }

  Color warnaKategori(String kategori) {

    switch (kategori) {

      case "Kesehatan":
        return Colors.red;

      case "Pendidikan":
        return Colors.blue;

      case "Administrasi":
        return Colors.orange;

      case "Transportasi":
        return Colors.green;

      case "Keamanan":
        return Colors.purple;

      default:
        return Colors.grey;
    }
  }

  void formLayanan({Map? data}) {

    final nama = TextEditingController(text: data?['nama']);
    final alamat = TextEditingController(text: data?['alamat']);
    final deskripsi = TextEditingController(text: data?['deskripsi']);

    String kategori = data?['kategori'] ?? "Kesehatan";

    showDialog(
      context: context,
      builder: (context) {

        return AlertDialog(

          title: Text(data == null ? "Tambah Layanan" : "Edit Layanan"),

          content: SingleChildScrollView(

            child: Column(

              children: [

                TextField(
                  controller: nama,
                  decoration: const InputDecoration(
                    labelText: "Nama Layanan",
                  ),
                ),

                const SizedBox(height: 10),

                DropdownButtonFormField(

                  value: kategori,

                  items: const [

                    DropdownMenuItem(
                      value: "Kesehatan",
                      child: Text("Kesehatan"),
                    ),

                    DropdownMenuItem(
                      value: "Pendidikan",
                      child: Text("Pendidikan"),
                    ),

                    DropdownMenuItem(
                      value: "Administrasi",
                      child: Text("Administrasi"),
                    ),

                    DropdownMenuItem(
                      value: "Transportasi",
                      child: Text("Transportasi"),
                    ),

                    DropdownMenuItem(
                      value: "Keamanan",
                      child: Text("Keamanan"),
                    ),

                  ],

                  onChanged: (value) {
                    kategori = value!;
                  },

                  decoration: const InputDecoration(
                    labelText: "Kategori",
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  controller: alamat,
                  decoration: const InputDecoration(
                    labelText: "Alamat",
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  controller: deskripsi,
                  decoration: const InputDecoration(
                    labelText: "Deskripsi",
                  ),
                ),

              ],
            ),
          ),

          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Batal"),
            ),

            ElevatedButton(

              onPressed: () async {

                if (data == null) {

                  await supabase.from('services').insert({

                    'nama': nama.text,
                    'kategori': kategori,
                    'alamat': alamat.text,
                    'deskripsi': deskripsi.text

                  });

                } else {

                  await supabase
                      .from('services')
                      .update({

                    'nama': nama.text,
                    'kategori': kategori,
                    'alamat': alamat.text,
                    'deskripsi': deskripsi.text

                  }).eq('id', data['id']);
                }

                Navigator.pop(context);

                ambilData();
              },

              child: const Text("Simpan"),
            ),

          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text("Aplikasi Layanan Publik"),
        centerTitle: true,

        actions: [

          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              MyApp.toggleTheme(context);
            },
          )

        ],
      ),

      body: RefreshIndicator(

        onRefresh: ambilData,

        child: ListView.builder(

          padding: const EdgeInsets.all(15),

          itemCount: layanan.length,

          itemBuilder: (context, index) {

            final data = layanan[index];

            final nama = data['nama'] ?? "";
            final kategori = data['kategori'] ?? "";
            final alamat = data['alamat'] ?? "";
            final deskripsi = data['deskripsi'] ?? "";

            return Card(

              elevation: 3,

              margin: const EdgeInsets.symmetric(vertical: 8),

              child: ListTile(

                leading: CircleAvatar(

                  backgroundColor: warnaKategori(kategori),

                  child: Icon(
                    ikonKategori(kategori),
                    color: Colors.white,
                  ),
                ),

                title: Text(
                  nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text("Kategori : $kategori"),
                    Text("Alamat : $alamat"),
                    Text(deskripsi),

                  ],
                ),

                trailing: Row(

                  mainAxisSize: MainAxisSize.min,

                  children: [

                    IconButton(

                      icon: const Icon(Icons.edit, color: Colors.blue),

                      onPressed: () {
                        formLayanan(data: data);
                      },
                    ),

                    IconButton(

                      icon: const Icon(Icons.delete, color: Colors.red),

                      onPressed: () {
                        hapusData(data['id']);
                      },
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {
          formLayanan();
        },

        child: const Icon(Icons.add),
      ),
    );
  }
}