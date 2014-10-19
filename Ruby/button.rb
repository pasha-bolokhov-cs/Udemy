#!/usr/bin/env ruby
#


require "tk"


class Project

  def initialize

    ph = { "padx" => 50, "pady" => 20 }
    p = proc { say }
    @t = TkVariable.new()
    root = TkRoot.new() { title "The name" }
    top = TkFrame.new(root)
    TkLabel.new(top) { text "Give name -> "; pack(ph) }
    @entry = TkEntry.new(top, "textvariable" => @t)
    @entry.pack(ph)
    TkButton.new(top) { text "Say"; command p; pack(ph) }
    TkButton.new(top) { text "Quit"; command { proc exit }; pack(ph) }
    top.pack("fill"=>"both", "side" => "top")
  end

  def say
    @t.value = "Hey " + @t.value
  end

end


Project.new()
Tk.mainloop()



