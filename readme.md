# Laravel BrowserStack Automate Cucumber

### What is this repo?

This repository contains examples of how to use Browserstack Automate with your Cucumber tests but in a Laravel app.
It includes:

- a Cucumber test you can run from the command line that will initiate a connection to the Browserstack servers
- a Rakefile that will run the Cucumber tests on different plateforms and browsers
- a travis.yml file you can use to have the tests running automatically on Travis

### How to use?

- Clone this repo
- ```composer install```
- ```cd tests/cucumber```
- ```bundle install``` (assuming you have bundler installed)

To run the single test:

- ```php artisan serve &```
- ```wget http://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip```
- ```unzip BrowserStackLocal-linux-x64.zip```
- ```./BrowserStackLocal BS_AUTH_KEY -forcelocal &``` (BS_AUTH_KEY being your Browserstack Auth Key)
- ```cucumber OS="windows" BROWSER="chrome" OS_VERSION="10" BS_USERNAME=YOUR_BS_USERNAME BS_AUTHKEY=YOUR_BS_AUTH_KEY```


To run the test on different platforms and browsers:
- ```php artisan serve &```
- ```wget http://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip```
- ```unzip BrowserStackLocal-linux-x64.zip```
- ```./BrowserStackLocal BS_AUTH_KEY -forcelocal &``` (BS_AUTH_KEY being your Browserstack Auth Key)
- ```rake```
