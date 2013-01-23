require "laya_conversation/version"

module LayaConversation

  class Config
    def self.init_data
      binding.pry
      plugin = Plugin.find_or_create(:name => "laya_conversation", :description => "CONVERSATION BOT")

      plugin.keywords.find_or_create(:keyword => "manubot", :trigger => "fortune")
      plugin.keywords.find_or_create(:keyword => "shrug", :trigger => "woot")
      plugin.keywords.find_or_create(:keyword => "mb: ", :trigger => "cleverbot")

      plugin.settings.find_or_create(:name => "BOT NAME")
    end
  end

  class Triggers
  end



end
