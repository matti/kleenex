RSpec.describe Kleenex do
  it "has a version number" do
    expect(Kleenex::VERSION).not_to be nil
  end

  it "kleans" do
    kleenex
  end
end
