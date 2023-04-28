import 'package:unitrail/localization_model.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class ClassifierFloors extends Classifier {
  ClassifierFloors({int numThreads: 1})
      : super(numThreads: numThreads, labelFileName: 'assets/floors.txt');

  @override
  String get modelName => 'floors(4).tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(0, 1);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 255);
}
