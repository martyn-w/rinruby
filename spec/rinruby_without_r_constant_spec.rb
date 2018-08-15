require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'rinruby_without_r_constant'

describe RinRubyWithoutRConstant do
  let(:params){
    {
      :echo_enabled => false, 
      :interactive => false, 
      :executable => nil, 
      :port_number => 38525, 
      :port_width => 1,
    }
  }
  let(:r){
    RinRubyWithoutRConstant.new(*([:echo_enabled, :interactive, :executable, :port_number, :port_width].collect{|k| params[k]}))
  }
  include_examples 'RinRubyCore'
end
