=begin

Question: IP Validation

Description:
  Write an algorithm that will identify valid IPv4 addresses in dot-decimal format. IPs should be
  considered valid if they consist of four octets, with values between 0 and 255, inclusive.

  Examples of valid inputs:
    1.2.3.4
    123.45.67.89

  Invalid input examples:
    1.2.3
    1.2.3.4.5
    123.456.78.90
    123.045.067.089

Notes:
  Leading zeros (e.g. 01.02.03.04) are considered invalid
  Inputs are guaranteed to be a single string

=end

def is_valid_ip(ip)
  ips = ip.split('.')
  return false if ips.size != 4 || ips.any? { |e| e.size >= 2 && e.start_with?('0') }
  ip_filter = ips.map { |e| e.gsub(/\d+/, '') }
  return false unless ip_filter.all?(&:empty?)

  ips = ips.map { |e| Integer(e) }
  return false if ips.any? { |e| e.negative? || e > 255 }
  true
rescue
  false
end

=begin

Others' solutions:

def is_valid_ip(ip)
  tokens = ip.split(".")
  tokens.size == 4 && tokens.all? { |token| token.to_i.to_s == token && (0..255).include?(token.to_i) }
end

def is_valid_ip(ip)
 begin
   IPAddr.new(ip)
   return true
 rescue ArgumentError
   return false
 end
end

def is_valid_ip(ip)
  ip.match?(/^((2(5[0-5]|[0-4]\d)|1\d{2}|[1-9]?\d)\.){3}((2(5[0-5]|[0-4]\d)|1\d{2}|[1-9]?\d))$/)
end

def is_valid_ip(ip)
  IPAddr.new(ip) !=nil rescue false
end

def is_valid_ip(ip)
  arr = ip.split('.')
  return false if arr.length != 4
  arr.map do |segment|
    [
      segment == segment.to_i.to_s,
      segment.to_i <= 255,
      segment.to_i >= 0
    ].all?
  end.all?
end

def is_valid_ip(ip)
  require "resolv"
  ip  =~ Resolv::IPv4::Regex ? true : false
end

=end