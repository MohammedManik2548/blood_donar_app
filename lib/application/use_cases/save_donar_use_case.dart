import 'package:blood_donation_app/application/use_cases/base_use_case.dart';
import 'package:blood_donation_app/domain/entities/donar.dart';
import 'package:blood_donation_app/domain/repositories/repository.dart';

class SaveDonarUseCase implements BaseUseCase<void, Donar>{

  final DonarsRepository _donarsRepository;

  SaveDonarUseCase(this._donarsRepository);

  @override
  Future<void> call(Donar request) {
    return _donarsRepository.addDonar(donar: request);
  }

}