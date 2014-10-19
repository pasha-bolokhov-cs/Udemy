#!/usr/bin/env ruby
#

require "tk"

root = TkRoot.new() { title "Widgets" }

button = TkButton.new(root) { text "A button!" }
button.pack("side" => "right", "fill" => "y")

entry = TkEntry.new(root).pack("side" => "top", "fill" => "x")
entry.insert(0, "sample entry")

label = TkLabel.new(root) { text "A label!" }
label.pack("side" => "right")

text = TkText.new(root) {width 40; height 5}.pack("side" => "right")
text.insert("end", "sample texts")

TkMessage.new(root) { text "Hey, message" }.pack("side" => "bottom")

Tk.mainloop()
