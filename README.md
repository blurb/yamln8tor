yamln8tor
=========

The yamln8tor is a Rails i18n framework YAML syntax validator.

## Install

Since we don't have this hosted on a gem server yet, you'll need to build and install manually.

    $ gem build yamln8tor.gemspec
    $ gem install yamln8tor-0.0.1.gem
    
Note that when you run `gem install` you're installing yamln8tor for the ruby build you're currently on (this project includes a `.rbenv-version` file that defaults to 1.9.2)

## Usage

```shell
Commands:
  yamln8tor help [COMMAND]      # Describe available commands or one specific command
  yamln8tor validate DIRECTORY  # Validate syntax for all YAML files in the given base directory
```

## Run

    $ yamln8tor validate <PATH_TO_BLURBY>

    Validating YAML files in ../blurby/content.
    (text/en/mailer/share_email/share_book.yml): found unexpected end of stream while scanning a quoted scalar at line 10 column 22
    (text/es/mailer/samsung_email/shipped_confirmation.yml): did not find expected key while parsing a block mapping at line 5 column 9
    Finished validating YAML files. Found 2 errors.

## Todo

   * Verify key parity between locales and do a diff between locale structures.
   * Colorized output.
   * On error, print out the file blob so we can visually inspect the error inline.

## License

This lives in Blurbland, for now...
