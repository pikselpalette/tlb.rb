require 'rake'
require File.join('rake', 'testtask')
require 'tlb'
require File.join('tlb', 'util')

class Tlb::TestUnit::TestTask < Rake::TestTask
  def initialize *args
    super do |this|
      this.ruby_opts.unshift " -r#{Tlb::Util.quote_path(File.dirname(__FILE__), 'mediator_inflection')} "
      yield this if block_given?
    end
  end
end
