import 'package:blood_donation_app/infrastucture/models/local/donar_model.dart';

abstract class RemoteDonarProvider {
  Future<void> addDonar({required DonarModel donar});

  Future<List<DonarModel>> getAllDonar();

  Future<DonarModel> getDonarById({required int id});

  Future<void> updateDonar({required int id, required DonarModel donar});

  Future<void> deleteDonar({required int id});
}

class FireBaseDonar implements RemoteDonarProvider{
  @override
  Future<void> addDonar({required DonarModel donar}) {
    // TODO: implement addDonar
    throw UnimplementedError();
  }

  @override
  Future<void> deleteDonar({required int id}) {
    // TODO: implement deleteDonar
    throw UnimplementedError();
  }

  @override
  Future<List<DonarModel>> getAllDonar() {
    // TODO: implement getAllDonar
    throw UnimplementedError();
  }

  @override
  Future<DonarModel> getDonarById({required int id}) {
    // TODO: implement getDonarById
    throw UnimplementedError();
  }

  @override
  Future<void> updateDonar({required int id, required DonarModel donar}) {
    // TODO: implement updateDonar
    throw UnimplementedError();
  }

}
