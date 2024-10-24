Commands:

```sh
dart run intl_translation:extract_to_arb --output-dir=lib/l10n lib/main.dart

dart run intl_translation:generate_from_arb \
    --output-dir=lib/l10n --no-use-deferred-loading \
    lib/main.dart lib/l10n/intl_*.arb
```

i18n: internationalization
l10n: localization