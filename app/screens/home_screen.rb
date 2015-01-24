class HomeScreen < PM::Screen

  include Orientation

  title "Modal Bug Test"

  def on_load
    set_nav_bar_button :right, title: "Modal", action: :show_modal
  end

  def show_modal
    open_modal HelpScreen.new(nav_bar: true)
  end

end
