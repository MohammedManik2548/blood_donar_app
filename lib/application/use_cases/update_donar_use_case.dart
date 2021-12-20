import 'package:blood_donation_app/application/use_cases/base_use_case.dart';
import 'package:blood_donation_app/domain/entities/donar.dart';
import 'package:blood_donation_app/domain/repositories/repository.dart';

class UpdateDonarUseCase implements BaseUseCase<List<Donar>, Donar> {
  final DonarsRepository _donarsRepository;

  UpdateDonarUseCase(this._donarsRepository);

  @override
  Future<List<Donar>> call(Donar request) async {
    await _donarsRepository.updateDonar(id: request.id, donar: request);
    
    return _donarsRepository.getAllDonar();
  }
}
