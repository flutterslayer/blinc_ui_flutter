/// Spacing values can be used in paddings, buttons, boxes,
/// component sizing in general.
/// It ranges from 0 to 80, being all options inbetween multiples of 8.
class Spacing {
  static const double _baseValue = 8;

  /// The [zero] size measures 0px
  static const double zero = 0; // 0

  /// The [xxxs] size measures 8px
  static const double xxxs = _baseValue;

  /// The [xxs] size measures 16px
  static const double xxs = _baseValue * 2; // 16

  /// The [xs] size measures 24px
  static const double xs = _baseValue * 3; // 24

  /// The [sm] size measures 32px
  static const double sm = _baseValue * 4; // 32

  /// The [md] size measures 40px
  static const double md = _baseValue * 5; // 40

  /// The [lg] size measures 48px
  static const double lg = _baseValue * 6; // 48

  /// The [xl] size measures 56px
  static const double xl = _baseValue * 7; // 56

  /// The [xxl] size measures 64px
  static const double xxl = _baseValue * 8; // 64

  /// The [xxxl] size measures 72px
  static const double xxxl = _baseValue * 9; // 72

  /// The [huge] size measures 80px
  static const double huge = _baseValue * 10; // 80

}
