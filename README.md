# Bootstrap Helpers

Rails helpers to build bootstrap components and avoid repeating html throughout
your templates

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap_helpers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap_helpers

## Usage

Only some components are supported for now.

### Modal

Use the `modal` helper method to build a modal.

All options passed to the helper that are not specific to it are passed
to the `.modal-dialog` container div, like the `:class` option.

Example :

```haml
= modal id: 'modal-form', fade: false do |m|
  = m.header do
    Modal

  = form_for @resource do |f|
    = m.body do
      = f.text_field :field

    = m.footer do
      = f.submit
```

### Panel

Use the `panel` helper method to build a panel.

All options passed to the helper that are not specific to it are passed
to the `.panel` container div, like the `:class` option.

```haml
= panel do |p|
  = p.header do
    Panel


  = p.body do
    / Contents here

  = p.footer do
    = link_to "Back", :back
```

### Alert

Use the `alert` helper method to build a alert.

All options passed to the helper that are not specific to it are passed
to the `.alert` container div, like the `:class` option.

```haml
= alert type: 'success', dismissable: false do |m|
  Alert message
```

## Contributing

1. Fork it ( https://github.com/glyph-fr/bootstrap_helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
