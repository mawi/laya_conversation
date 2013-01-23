# encoding: UTF-8

require "laya_conversation/version"

module LayaConversation

  class Config
    def self.init_data
      plugin = Plugin.find_or_create(:name => "laya_conversation", :description => "CONVERSATION BOT")

      plugin.keywords.find_or_create(:keyword => "manubot", :trigger => "fortune")
      plugin.keywords.find_or_create(:keyword => "shrug", :trigger => "woot")
      plugin.keywords.find_or_create(:keyword => "mb: ", :trigger => "cleverbot")

      plugin.settings.find_or_create(:name => "BOT NAME")
    end
  end

  class Triggers
    def self.woot(query)
      woot = <<-EOF
      ¯\\_(ツ)_/¯
      EOF
      woot
    end

    def self.fortune(query)
      if query.include?("joke")
        fortune = `fortune /usr/local/Cellar/fortune/9708/share/games/fortunes/humorix-misc`
      else
        fortune = `fortune -a`
      end
      "MANUBOT WISDOM: #{fortune}"
    end

    # def self.cleverbot(query)
    #   message = query.gsub("mb: ","")
    #   response = @cleverbot_client.write(message)
    #   "MANUBOT says: #{response}"
    # end
  end



end
