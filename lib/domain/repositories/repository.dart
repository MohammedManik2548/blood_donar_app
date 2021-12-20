import 'package:blood_donation_app/domain/entities/donar.dart';

abstract class DonarsRepository {
  Future<void> addDonar({required Donar donar});

  Future<List<Donar>> getAllDonar();

  Future<Donar> getDonarById({required int id});

  Future<void> updateDonar({required int id, required Donar donar});

  Future<void> deleteDonar({required int id});
}
