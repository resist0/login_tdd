import 'package:faker/faker.dart';
import 'package:test/test.dart';

import 'package:fordev/presentation/protocols/protocols.dart';

import 'package:fordev/validation/validators/validators.dart';



void main() {

  MinLengthValidation sut;

  setUp((){
    sut = MinLengthValidation(field: 'any_field', size: 5);
  });

  test('Should return error if value is empty', () {
    final error = sut.validate({'any_field': ''});
    expect(error, ValidationError.invalidField);

  });


  test('Should return error if value is null', () {
    final error = sut.validate({'any_field': null});
    expect(error, ValidationError.invalidField);

  });


  test('Should return error if value is less than min size', () {
    final error = sut.validate({'any_field': faker.randomGenerator.string(4, min: 1)});
    expect(error, ValidationError.invalidField);

  });


  test('Should return error if value is equal than min size', () {
    final error = sut.validate({'any_field': faker.randomGenerator.string(5, min: 5)});
    expect(error, null);

  });


  test('Should return error if value is bigger than min size', () {
    final error = sut.validate({'any_field': faker.randomGenerator.string(10, min: 6)});
    expect(error, null);

  });


}