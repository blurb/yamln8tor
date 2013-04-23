yamln8tor
=========

The yamln8tor is a Rails i18n framework YAML syntax validator.

## Install

    $ bundle install

## Run

    $ bundle exec yamln8tor.rb validate <PATH_TO_BLURBY>

    Validating YAML files in ../blurby/content.
    (text/en/mailer/share_email/share_book.yml): found unexpected end of stream while scanning a quoted scalar at line 10 column 22
    (text/es/mailer/samsung_email/shipped_confirmation.yml): did not find expected key while parsing a block mapping at line 5 column 9
    (text/es/my/book/_announce_confirmation_page.yml): found unknown escape character while parsing a quoted scalar at line 5 column 26
    (text/es/my/book/widgets.yml): found unknown escape character while parsing a quoted scalar at line 10 column 26
    (text/fr/blurb_mobile/story_map.yml): found unknown escape character while parsing a quoted scalar at line 6 column 18
    (text/fr/mailer/samsung_email/shipped_confirmation.yml): did not find expected key while parsing a block mapping at line 5 column 9
    (text/ko/mailer/samsung_email/shipped_confirmation.yml): did not find expected key while parsing a block mapping at line 5 column 9
    (text/pt/blurb_mobile/location.yml): found unknown escape character while parsing a quoted scalar at line 6 column 18
    (text/pt/blurb_mobile/story_map.yml): found unknown escape character while parsing a quoted scalar at line 6 column 18
    (text/pt/mailer/samsung_email/shipped_confirmation.yml): did not find expected key while parsing a block mapping at line 5 column 9
    (text/pt/my/checkout/_checkout_header.yml): invalid trailing UTF-8 octet at line 1 column 1
    (text/zh/mailer/samsung_email/shipped_confirmation.yml): did not find expected key while parsing a block mapping at line 5 column 9
    Finished validating YAML files. Found 12 errors.

## Todo

   * Verify key parity between locales and do a diff between locale structures.
   * Colorized output.
   * On error, print out the file blob so we can visually inspect the error inline.

## License

This lives in Blurbland, for now...