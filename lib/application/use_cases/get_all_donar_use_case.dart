import 'package:blood_donation_app/application/dtos/request/empty_request.dart';
import 'package:blood_donation_app/application/use_cases/base_use_case.dart';
import 'package:blood_donation_app/domain/entities/donar.dart';
import 'package:blood_donation_app/domain/repositories/repository.dart';

class GetAllDonarUseCase implements BaseUseCase<List<Donar>, EmptyRequest>{

  final DonarsRepository _donarsRepository;

  GetAllDonarUseCase(this._donarsRepository);

  @override
  Future<List<Donar>> call(EmptyRequest request) {
    return _donarsRepository.getAllDonar();
  }

}