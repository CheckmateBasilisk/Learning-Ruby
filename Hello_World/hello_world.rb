require 'fox16'
include Fox


=begin
# creates root
app = FXApp.new

main = FXMainWindow.new(app, "Hello, World!", :width => 200, :height => 50)

app.create
main.show(PLACEMENT_SCREEN)

app.run
=end

# HelloWorld application inherits the main window class
# it has all the FXMainWindow methods, so it serves as a main window just fine
class HelloWorld < FXMainWindow
  def initialize(app)
    # creates
    super(app, "Hello, World!" , :width => 200, :height => 50)
  end
  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

# Creates the app root
app = FXApp.new
HelloWorld.new(app)
app.create
app.run
