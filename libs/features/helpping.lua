local feature = {}

feature.name = "Help ping"
feature.desc = "@ me to get the help message. Useful for when you forget the bot's prefix"
feature.onCommandType = "override"


feature.onMessage = function(m, event)
  if m.mentionedUsers.first == Misc.client.user and Misc.commandsMAP[string.sub(string.lower(m.content), 24)] and Misc.commandsMAP[string.sub(string.lower(m.content), 24)].name == "Help" then
    event.success = true
    Misc.commandsMAP.help.onCommand(m, true)
  end
end

return feature
