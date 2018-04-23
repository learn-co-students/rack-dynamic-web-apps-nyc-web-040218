class Application
  def slot_machine_decider
    num1 = Kernel.rand(1..20)
    num2 = Kernel.rand(1..20)
    num3 = Kernel.rand(1..20)

    if num1 == num2 && num1 == num3
      "You Win"
    else
      "You Lose"
    end
  end

  def call(env)
    resp = Rack::Response.new
    resp.write slot_machine_decider
    resp.finish
  end
end
