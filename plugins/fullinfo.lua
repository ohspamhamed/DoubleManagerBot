local function do_keyboard_robot()
    local keyboard = {}
    keyboard.inline_keyboard = {
    					{
    		    		{text = 'Support 👥', url = 'https://telegram.me/joinchat/BvytAD9KL7J2PE2u0ek3ZA'},
	    },
	    {
	    {text = '🔙 Back', callback_data = '!home'}
        }
    }
    return keyboard
end
local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '📡 Admins', callback_data = '!channel'},
	    },
	    {
	        {text = '� Other�', callback_data = '!robot'},
        }
    }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'Start KeyWord🙃', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end
local function do_keyboard_channel()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
					{text = 'Arian', url = 'https://telegram.me/Arian721'},
		},
		{
	    {text = '🔙', callback_data = '!home'},
        }
    
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'fullinfo' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[📍*Select One*📍`]]
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, 'Start KeyWord 🖐😄👇' ,do_keyboard_startme(), true)
        end
        return
    end

    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
        if query == 'channel' then
            local text = '📍*Select One*📍'
            local keyboard = do_keyboard_channel()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'robot' then
            local text = [[📍*Select One*📍]]
            local keyboard = do_keyboard_robot()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'buygroup' then
            local text = [[_Please wait after payment_ 
_We will be call to you_]]
            local keyboard = do_keyboard_buygroup()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'home' then
            local text = [[📍*Select One*📍]]
            local keyboard = do_keyboard_private()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start)@KeyWordRoBot$',
	    '^/(start)$',
	    '^/(help)$',
	    '^###cb:!(home)',
	    '^###cb:!(channel)',
	    '^###cb:!(robot)',

    }
}
