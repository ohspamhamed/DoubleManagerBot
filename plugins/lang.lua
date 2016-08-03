local function do_keyboard_home2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🌏 English', callback_data = '/starts'},
    	},
            {
    		{text = '💡 فارسی', callback_data = '/start2'},
        }
    }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🙃👉اینجا بزن! 👈🙃', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'start' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[ _Select your language_ 💡
*Don t Forgot When You Selected Language You Need Set It Again By* /lang
_زبان خود را انتخاب کنید_ 💡
از یاد نبرید وقتی که انتخاب کردید با /lang زبان مورد نظر را دوباره انتخاب کنید ]]
            local keyboard = do_keyboard_home2()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, 'Hey 👋 Please `start` me in *PV* 🖐😄👇' ,do_keyboard_startme(), true)
        end
        return
    end

    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'home2' then
            local text = [[_Select your language_ 💡
*Don t Forgot When You Selected Language You Need Set It Again By* /lang
_زبان خود را انتخاب کنید_ 💡
از یاد نبرید وقتی که انتخاب کردید با /lang زبان مورد نظر را دوباره انتخاب کنید]]
            local keyboard = do_keyboard_home2()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start)@KeyWordRobot$',
	    '^/(start)$',
	    '^###cb:!(home)',
	    '^###cb:!(channel)',
	    '^###cb:!(robot)',

    }
}
