#!/usr/bin/env ruby
# coding: utf-8

restrictions_password_key = 'Your Restrictions Password Key'
restrictions_password_salt = 'Your Restrictions Password Salt'

require 'openssl'
require 'base64'

salt = Base64.decode64(restrictions_password_salt)
10000.times do |i|
  passcode = "%04d" % i
  tmp = Base64.encode64(OpenSSL::PKCS5.pbkdf2_hmac(
                         passcode,
                         salt,
                         1000,
                         20,
                         "sha1")).chomp
  puts 'Check: ' + passcode + ' -> ' + tmp

  if tmp == restrictions_password_key
    puts 'Result: Passcode is ' + passcode
    exit
  end
end
