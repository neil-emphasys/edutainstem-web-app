import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class LoaderServices {
  void show({String? status}) {
    EasyLoading.show(
      status: status ?? 'Loading...',
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.black,
      indicator: LottieBuilder.asset(
        Assets.lottie.loading.path,
        fit: BoxFit.cover,
      ),
    );
  }

  void showSuccess(String message) {
    EasyLoading.showSuccess(message);
  }

  void showError(String message) {
    EasyLoading.showError(message);
  }

  void showInfo(String message) {
    EasyLoading.showInfo(message);
  }

  void showToast(String message) {
    EasyLoading.showToast(message);
  }

  void dismiss() {
    EasyLoading.dismiss();
  }

  void showProgress(double value, {String? status}) {
    EasyLoading.showProgress(value, status: status);
  }
}
