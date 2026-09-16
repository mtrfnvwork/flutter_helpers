part of '../../legacy.dart';

class YesNoDialogConfiguration({
  var String noButtonText = 'Нет',
  var String yesButtonText = 'Да',
}) {
  void update(YesNoDialogConfiguration value) {
    noButtonText = value.noButtonText;
    yesButtonText = value.yesButtonText;
  }
}
