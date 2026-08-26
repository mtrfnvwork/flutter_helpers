part of '../../legacy.dart';

class YesNoDialogConfiguration {
  YesNoDialogConfiguration({
    this.noButtonText = 'Нет',
    this.yesButtonText = 'Да',
  });

  String noButtonText;
  String yesButtonText;

  void update(YesNoDialogConfiguration value) {
    noButtonText = value.noButtonText;
    yesButtonText = value.yesButtonText;
  }
}
