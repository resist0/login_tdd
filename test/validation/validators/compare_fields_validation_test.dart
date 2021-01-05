import 'package:test/test.dart';

import 'package:fordev/presentation/protocols/protocols.dart';

import 'package:fordev/validation/validators/validators.dart';



void main() {

  CompareFieldsValidation sut;

  setUp((){
    sut = CompareFieldsValidation(field: 'any_field', fieldToCompare: 'other_field');
  });

  test('Should return error if values are not equal', () {
    final formData = {'any_field': 'any_value', 'other_field': 'other_value'};

    final error = sut.validate(formData);
    expect(error, ValidationError.invalidField);

  });


  test('Should return error if values are equal', () {
    final formData = {'any_field': 'any_value', 'other_field': 'any_value'};

    final error = sut.validate(formData);
    expect(error, null);

  });


}