import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
  final String token;

  @override
  List get props => [token];

  AccountEntity({@required this.token});

}
