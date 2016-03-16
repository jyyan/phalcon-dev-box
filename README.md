Trusty64 Virtual Machine for PhalconPHP Development
==============================================================

The setup includes:
-------------------
* box:       trusty64 (ubuntu 14.04)
* PHP:       PHP 5.5.9
* WebServer: Nginx Light 1.4.6
* Phalcon: 2.0.10-ppa1~trusty
* Phalcon Dev Tools: 2.0.10 +
* Zephir : 0.9.2a-dev
* MySQL  : 10.1.12+maria-1~trusty

Next steps:
-----------
If you have not installed Vagrant yet, go to http://downloads.vagrantup.com/

Clone this project:

    $ git clone https://github.com/jyyan/phalcon-dev-box
    $ cd phalcon-dev-box

Boot up:

    $ vagrant up

Afterwards you may access your box with

    $ vagrant ssh

Web Contents:
-----------
Put your website in `www/` directory and vagrant is forward 8080 port to guest OS 80 port.
You can't open `http://localhost:8080/` in your Host OS browser.

PreInstalled Command-Line Tools:
-----------
* composer
* phalcon
* zephir


Enjoy!
