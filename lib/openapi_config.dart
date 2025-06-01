// Openapi Generator last run: : 2025-06-01T21:49:25.212007
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  inputSpec: InputSpec(path: 'api.yaml'),
  generatorName: Generator.dio,
  outputDirectory: 'api',
  additionalProperties: DioProperties(pubName: 'jagexLauncherAPI'),
)
class OpenAPIConfig {}