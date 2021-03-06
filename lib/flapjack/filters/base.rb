#!/usr/bin/env ruby

module Flapjack
  module Filters
    module Base
      def initialize(opts={})
        @logger = opts[:logger]
        @redis  = opts[:redis]
      end

      def name
        self.class.to_s.split('::').last
      end
    end
  end
end
