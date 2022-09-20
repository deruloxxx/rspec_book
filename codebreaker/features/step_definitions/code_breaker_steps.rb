class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def memolaizeOutput
  @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

Given /"^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new(output)
  @game.start(secret)
end

When /^I start a new game$/ do
	game = Codebreaker::Game.new(output)
	game.start('1234')
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end

Then /^I should see "([^"]*)"$/ do |message|
  expect(memolaizeOutput.messages).to include(message)
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  expect(output.messages).to include(mark)
end
