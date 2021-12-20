import 'package:blood_donation_app/application/use_cases/base_use_case.dart';
import 'package:blood_donation_app/domain/entities/donar.dart';
import 'package:blood_donation_app/domain/repositories/repository.dart';

class DeleteDonarUseCase implements BaseUseCase<List<Donar>, int> {
  final DonarsRepository _donarsRepository;

  DeleteDonarUseCase(this._donarsRepository);

  @override
  Future<List<Donar>> call(int request) async {
    await _donarsRepository.deleteDonar(id: request);

    return _donarsRepository.getAllDonar();
  }
}
