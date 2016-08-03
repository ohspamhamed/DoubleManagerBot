local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '💡 شروع/Start 🌏', callback_data = '!home2'},
            }
    }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'منو استارت کن 🐳', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    -- save stats
    if blocks[1] == 'start' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = make_text(lang[ln].help.private, msg.from.first_name:mEscape())
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
        end
        return
    end
        local res = api.sendKeyboard(msg.from.id, 'Select One Of This *Keyboards* :)', keyboard, true)
        if res then
            api.sendMessage(msg.chat.id, lang[ln].help.group_success, true)
        else
            api.sendKeyboard(msg.chat.id, lang[ln].help.group_not_success, do_keyboard_startme(), true)
        end
    end
    if msg.cb then
        local query = blocks[1]
        local text
        if query == 'info_button' then
            keyboard = do_keybaord_credits()
		    api.editMessageText(msg.chat.id, msg.message_id, lang[ln].credits, keyboard, true)
		    return
		end
 
    end
end

return {
	action = action,
	admin_not_needed = true,
	triggers = {
	    '^/(start)$',
    }
}
