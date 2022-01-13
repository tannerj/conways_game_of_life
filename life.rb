#! /usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

class Life

  attr_reader :neighbor_ids

  def initialize(id:)
    @id = id.to_i
    @neighbor_ids = self.neighbor_ids()
  end

  def neighbor_ids()
    neighbor_ids = []
    # If not on first row, calculate neighbors from previous row
    if @id > 9
      neighbor_ids << (@id - 9) if @id % 8 != 1
      neighbor_ids << (@id - 8)
      neighbor_ids << (@id - 7) if @id % 8 != 0
    end
    # caluculate neighbors from own row
    neighbor_ids << (@id - 1) if @id % 8 != 1
    neighbor_ids << (@id + 1) if @id % 8 != 0
    # if not on last row, calculate neighbors from next row
    if @id < 57
      neighbor_ids << (@id + 7) if @id % 8 != 1
      neighbor_ids << (@id + 8)
      neighbor_ids << (@id +9) if @id % 8 != 0
    end
    neighbor_ids
  end
end
