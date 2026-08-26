part of '../../legacy.dart';

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
