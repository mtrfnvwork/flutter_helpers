part of '../../flutter_helpers.dart';

extension BoolExtension on bool {
  int compareTo(bool other) => (this ? 1 : 0).compareTo(other ? 1 : 0);
}
