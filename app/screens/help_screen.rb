class HelpScreen < PM::TableScreen

  include Orientation

  title "Modal - Help"

  def on_load
    set_nav_bar_button :right, title: "Close", action: :close
  end

  def table_data
    [{
      title: "About",
      cells: [{
        title: "About app",
        action: :about
      }, {
        title: "More about app",
        action: :more_about
      }]
    }, {
      title: "Help",
      cells: [{
        title: "Help me",
        action: :help
      }]
    }]
  end

  def about
    PM.logger.info "Tapped about"
  end

  def more_about
    PM.logger.info "Tapped more about"
  end

  def help
    PM.logger.info "Tapped help"
  end

end
