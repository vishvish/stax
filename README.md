# snsbrys


## Requirements

   * Virtualbox / <http://www.virtualbox.org>
   * Vagrant  / <http://vagrantup.com>
   * Ruby 2.1 or 2.2
   * Bundler gem installed [`gem install bundler`]


### The build

Vagrant is used to start and provision three nodes using chef-zero. These nodes are given static private IPs from the 172.0.0.0/16 range. If these need to be changed, simply edit the `Vagrantfile` to update them, and also change the `spec/integration/cluster_spec.rb` file.


### Running the stack

    vagrant up

Open <http://localhost:8080> in your browser. NOTE: Strange things are happening with Google Chrome, and the page seems to be cached in the browser. Firefox and Safari do not exhibit this behaviour, and the pages are displayed in the expected round-robin manner.

### Testing

Install the dependencies.

	bundle install

Run the unit tests.

    rspec

Run the integration tests straight after firing up a new stack.

	vagrant up
    rspec --tag integration

#### Kitchen Tests

There is a basic `.kitchen.yml` file which describes the platform on Ubuntu and defines two suites for the web and app.

	kitchen test