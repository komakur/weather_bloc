import 'package:open_meteo_api/open_meteo_api.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test('returns correct Weather object', () {
        expect(
          Weather.fromJson(
            <String, dynamic>{'temperature': 15.3, 'weatherCode': 63},
          ),
          isA<Weather>()
              .having((p0) => p0.temperature, 'temperature', 15.3)
              .having((p0) => p0.weatherCode, 'weatherCode', 63),
        );
      });
    });
  });
}
