part of '../../legacy.dart';

class TextFormFieldDialogConfiguration({
  var String cancelButtonText = 'Отмена',
  var String confirmButtonText = 'Подтвердить',
}) {
  void update(TextFormFieldDialogConfiguration value) {
    cancelButtonText = value.cancelButtonText;
    confirmButtonText = value.confirmButtonText;
  }
}
