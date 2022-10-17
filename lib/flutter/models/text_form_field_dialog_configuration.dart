part of 'package:flutter_helpers/flutter_helpers.dart';

class TextFormFieldDialogConfiguration {
  TextFormFieldDialogConfiguration({
    this.cancelButtonText = 'Отмена',
    this.confirmButtonText = 'Подтвердить',
  });

  String cancelButtonText;
  String confirmButtonText;

  void update(TextFormFieldDialogConfiguration value) {
    cancelButtonText = value.cancelButtonText;
    confirmButtonText = value.confirmButtonText;
  }
}
