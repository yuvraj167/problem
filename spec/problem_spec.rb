require 'spec_helper'
require_relative '../problem.rb'

describe Problem do
	it 'class can be instantiated' do
		sample = Problem.new
		expect(sample.class).to eq(Problem)	
	end

	it 'raises error without any input to method' do
		sample = Problem.new
		expect { sample.check_time('') }.to raise_error(ArgumentError)
	end

	it 'gives empty array if input doesnt match any time window' do
		sample = Problem.new
		expect(sample.check_time('2015-05-07 20:10:40')).to eq([]) 
	end

end