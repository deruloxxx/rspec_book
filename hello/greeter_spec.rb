class RSpecGreeter
  def greet
    "Hello RSpec!"
  end
end


# sample group
describe "RSpec Greeter" do
  # sampleを宣言する
  it "Should say 'Hello RSpec!' when it receives the greet() message" do
    # Given
    greeter = RSpecGreeter.new
    # When
    greeting = greeter.greet
    # Then
    greeting.should == "Hello RSpec!"
  end
end