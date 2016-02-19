class Television
  attr_accessor :channel_current
  attr_accessor :on_off
  attr_accessor :volume_current


  def power(on_off)
    if (on_off == "on")
      @on_off = "power on"
    else
      @on_off = "power off"
    end

    puts @on_off
  end

  def channelUp
    if (@on_off == "power on")
      if (@channel_current < 100)
        @channel_current = @channel_current + 1
        puts "the current channel is #{channel_current}"
      else
        puts "The maximum channel is 100, can not go any higher"
      end
    end
  end

  def channelDown
    if (@on_off == "power on")
      if (@channel_current > 1)
        @channel_current -= 1
        puts "the current channel is #{channel_current}"
      else
        puts "The minimum channel is 1, can not go any lower"
      end
    end
  end

  def changeChannel(x)
    if (@on_off == "power on")
      if(x > 0 && x < 101)
        @channel_current = x
        puts "the current channel is #{channel_current}"
      else
        puts "Channels are from 1-100, please select a channel in that range"
      end
    end
  end

  def increaseVolume
    if (@on_off == "power on")
      if (@volume_current < 32)
        @volume_current += 1
        puts "the current volume is #{volume_current}"
      else
        puts "Maximum volume is 32, you can not increase the volume any more"
      end
    end
  end
  def decreaseVolume
    if (@on_off == "power on")
      if (@volume_current > 1)
        @volume_current -= 1
        puts "the current volume is #{volume_current}"
      else
        puts "The minimum volume is 1, the volume can not be decreased any more"
      end
    end
  end

  def mute(x)
    if (@on_off == "power on")
      if(x == "on")
        puts "the current volume is muted"
      elsif(x == "off")
        puts "the current volume is #{volume_current}"
      end
    end
  end
  def display
    if (@on_off == "power on")
      puts "The current channel is: #{channel_current}"
      puts "The current volume is: #{volume_current}"
    end
  end
end


tv = Television.new
tv.channelUp
tv.power("on")
tv.channel_current = 1
tv.volume_current = 30
tv.channelUp
tv.channelUp
tv.channelDown
tv.changeChannel(42)
tv.increaseVolume
tv.increaseVolume
tv.increaseVolume
tv.decreaseVolume
tv.volume_current = 2
tv.decreaseVolume
tv.decreaseVolume
tv.mute("on")
tv.mute("off")
tv.changeChannel(2)
tv.channelDown
tv.channelDown
tv.changeChannel(99)
tv.channelUp
tv.channelUp
tv.changeChannel(101)
tv.changeChannel(-1)
tv.display
tv.power("off")