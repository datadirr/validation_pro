[<img src="https://datadirr.com/datadirr.png" width="200" />](https://datadirr.com)


# validation_pro

Validation like email address, mobile number, password, input formatter, etc.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/validation_pro/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `validation_pro` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  validation_pro:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/datadirr/validation_pro/tree/master/example) here.

### Validation

* Email address validation
```dart
Validate.isEmail(emailAddress);
```

* Mobile number validation
```dart
/// validation mobile number (Only Indian pattern and 10 digits mobile number accepted)
Validate.isMobile(mobileNumber);
```

* Username validation
```dart
/// Min 6 and Max 18 characters
/// Only support lowercase or uppercase or number character
/// Only support special character [._]
Validate.isUsername(username);
```

* Password validation
```dart
/// like password pattern
/// Min 6 and Max 12 characters
/// At least one uppercase character
/// At least one lowercase character
/// At least one number
/// At least one special character [@#$!%?]
Validate.isPassword(password)
```

* Input int value validation
```dart
TextField(
keyboardType: TextInputType.number,
inputFormatters: [Validate.intValueFormatter()]
)
```

* Input decimal value validation
```dart
TextField(
keyboardType: TextInputType.number,
inputFormatters: [Validate.decimalValueFormatter(decimalPlaceValue: 3)]
)
```
