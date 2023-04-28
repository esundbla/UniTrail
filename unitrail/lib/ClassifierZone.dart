import 'package:unitrail/localization_model.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class ClassifierZones extends Classifier {
  ClassifierZones({int numThreads: 1})
      : super(numThreads: numThreads, labelFileName: 'assets/super.txt');

  @override
  String get modelName => 'super.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(0, 1);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 255);
}
