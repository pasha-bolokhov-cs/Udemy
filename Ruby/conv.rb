#!/usr/bin/env ruby
#


require "tk"

class Convert

  def initialize
    ph = { "padx" => 10, "pady" => 10 }
    p = proc { convert }
    @textf = TkVariable.new()
    @textc = TkVariable.new()
    root = TkRoot.new() { title "Converter" }
    top = TkFrame.new(root)
    TkLabel.new(top) { text "Upper - Fahr, Lower - Celc"; pack(ph) }
    @entryf = TkEntry.new(root, "textvariable" => @textf)
    @entryf.pack(ph)
    @entryc = TkEntry.new(root, "textvariable" => @textc)
    @entryc.pack(ph)
    TkButton.new(top) { text "Convert"; command p; pack(ph) }
    TkButton.new(top) { text "Quit"; command { proc exit }; pack(ph) }
    top.pack("fill" => "both", "side" => "top")
  end

  def convert()
    if (@textf != "")
      @textc.value = (@textf - 32.0) * 5.0 / 9.0
    elsif (@textc != "")
      @textf.value = 32.0 + @textc * 9.0 / 5.0
    end
  end
end

Convert.new()
Tk.mainloop()

    
    
