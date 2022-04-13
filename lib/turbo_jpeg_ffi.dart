import 'dart:ffi';
import 'dart:io';

import 'package:turbo_jpeg_ffi/generated_bindings.dart';

export 'package:turbo_jpeg_ffi/generated_bindings.dart';

late final TurboJpegFFI turboJpegFFI = TurboJpegFFI(
  Platform.isAndroid
      ? DynamicLibrary.open('libturbojpeg.so')
      : DynamicLibrary.process(),
);
