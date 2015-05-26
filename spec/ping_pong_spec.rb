require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("counts from one to a given number") do
    expect((2).ping_pong()).to(eq([1, 2]))
  end

    it("it returns ping for every number devisible by 3") do
      expect((3).ping_pong()).to(eq([1, 2, "ping"]))
    end

    it ("it returns pong for every number devisible by 5") do
      expect((5).ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
    end

    it("returns ping-pong for every number devisible by 3 and 5") do
      expect((15).ping_pong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong" ]))   
    end
end
