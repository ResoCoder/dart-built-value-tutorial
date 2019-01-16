import 'package:built_value_tut/model/built_vehicle.dart';

class CodeRunner {
  static void runCode() {
    var car = BuiltVehicle((b) => b
      ..type = VehicleType.car
      ..brand = 'Tesla'
      ..price = 100000
      ..passengerNames.addAll(['John', 'Sophia', 'Dave', 'Linda']));

    var copiedTrain = car.rebuild((b) => b
      ..brand = 'Škoda Transportation'
      ..type = VehicleType.train);

    print(car);
    print(copiedTrain);

    final carJson = car.toJson();
    print(carJson);

    final carFromJson =
        BuiltVehicle.fromJson(carJson).rebuild((b) => b..price = 2000);
    print(carFromJson);
  }
}
