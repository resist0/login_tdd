import 'package:faker/faker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:fordev/infra/cache/cache.dart';




class FlutterSecureStorageSpy extends Mock implements FlutterSecureStorage {}


void main() {

  LocalStorageAdapter sut;
  FlutterSecureStorageSpy secureStorage;
  String key;
  String value;
  

  void mockSaveSecureError(){
    when(secureStorage.write(key: anyNamed('key'), value: anyNamed('value')))
      .thenThrow(Exception());
  }


  setUp((){
     secureStorage = FlutterSecureStorageSpy();
     sut = LocalStorageAdapter(secureStorage: secureStorage);
     key = faker.guid.guid();
     value = faker.guid.guid();
  });


  test('Should call save secure with correct values', () async {
    await sut.saveSecure(key: key, value: value);

    verify(secureStorage.write(key: key, value: value));
  });


  test('Should throw if save secure throws', () async {
    mockSaveSecureError();

    final future = sut.saveSecure(key: key, value: value);

    expect(future, throwsA(TypeMatcher<Exception>()));
  });

}