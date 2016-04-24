require 'thread'

class Account
  attr_reader :amount

  def initialize(initial_amount)
    @amount = initial_amount
  end

  def debit(amount)
    @amount -= amount
  end

  def credit(amount)
    @amount += amount
  end
end

Threads = 10
Iterate = 100_000
total = Threads * Iterate

puts "Crediting account using #{Threads} threads"

A = Account.new(0)

threads = (0...Threads).map {
  Thread.new do
    Iterate.times do
      A.credit(1)
    end
  end
}

threads.each do |t| t.join end

puts "Account A: #{A.amount}"
puts "Should be: #{total}"
puts "Missing: #{total - A.amount}"
