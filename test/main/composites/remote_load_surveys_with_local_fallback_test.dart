import 'package:fordev/data/usecases/load_surveys/load_surveys.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

class RemoteLoadSurveysWithLocalFallback {
  final RemoteLoadSurveys remote;
  RemoteLoadSurveysWithLocalFallback({@required this.remote});
  Future<void> load() async {
    await remote.load();
  }
}

class RemoteLoadSurveysSpy extends Mock implements RemoteLoadSurveys {}

void main() {
  test('Should call remote load', () async {
    final remote = RemoteLoadSurveysSpy();
    final sut = RemoteLoadSurveysWithLocalFallback(remote: remote);

    await sut.load();

    verify(remote.load()).called(1);
  });
}
