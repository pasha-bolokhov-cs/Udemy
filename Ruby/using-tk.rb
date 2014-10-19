#!/usr/bin/env ruby
#


require 'tk'

root = TkRoot.new { title "Example on Tk" }

TkLabel.new(root) do
  text "Here is a label"
  pack { padx 15; pady 15; side "left" }
end

Tk.mainloop()
