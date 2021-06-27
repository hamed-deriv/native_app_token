import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

final DynamicLibrary nativeAppTokenLib = Platform.isAndroid
    ? DynamicLibrary.open("libnative_app_token.so")
    : DynamicLibrary.process();

final Pointer<Utf8> Function() _getAppToken = nativeAppTokenLib
    .lookup<NativeFunction<Pointer<Utf8> Function()>>('native_get_app_token')
    .asFunction();

String get getAppToken => _getAppToken().toDartString();
