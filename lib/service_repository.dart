import 'package:supabase_flutter/supabase_flutter.dart';
import 'service_model.dart';

class ServiceRepository {

  final supabase = Supabase.instance.client;

  Future<List<Service>> getServices() async {
    try {
      final data = await supabase
          .from('services')
          .select()
          .order('id');

      return data.map<Service>((e) => Service.fromMap(e)).toList();
    } catch (e) {
      throw Exception("Gagal mengambil data");
    }
  }

  Future<void> addService(Service service) async {
    try {
      await supabase.from('services').insert(service.toMap());
    } catch (e) {
      throw Exception("Gagal menambah data");
    }
  }

  Future<void> updateService(Service service) async {
    try {
      await supabase
          .from('services')
          .update(service.toMap())
          .eq('id', service.id!);
    } catch (e) {
      throw Exception("Gagal update data");
    }
  }

  Future<void> deleteService(int id) async {
    try {
      await supabase
          .from('services')
          .delete()
          .eq('id', id);
    } catch (e) {
      throw Exception("Gagal hapus data");
    }
  }
}