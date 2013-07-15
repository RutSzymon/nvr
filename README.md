# nvr

NIP validator

## Installation

Add this line to your application's Gemfile:

    gem 'nvr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nvr

## Usage

Just build new object of Nvr class with NIP and call valid? method:

	Nvr.new("NIP").valid?

## Example

	validate :verify_nip

	def verify_nip
	 	errors.add(:nip) unless Rvr.new(nip).valid?
	end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
