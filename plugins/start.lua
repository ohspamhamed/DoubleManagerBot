local function do_keyboard_robot()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{
    					{text = 'در حال اپدیت ℹ🏾', callback_data = '!sharee'},
    					},
                                        {
	    {text = '🔙 برگشت', callback_data = '!home'}
        }
    }
    return keyboard
end
local function do_keyboard_home()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🌐 تبلیغ شما', url = 'http://telegram.me/arian721'},
    		{text = '📡 کانال ها', callback_data = '!channel'},
        },
	    {
	        {text = '🔸دیگر', callback_data = '!robot'}
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
local function do_keyboard_channel()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '📲 اپ رویدس', url = 'https://telegram.me/AppRoids'},
	    },
	{
	        		{text = '🔗 تی جی لند', url = 'https://telegram.me/TgLand'},

    },
		{
	    {text = '🔙 برگشت', callback_data = '!private'}
        }
    
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'starts' or blocks[1] == 'helps' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[📍 *Welcome BeatBotTeam Official Bot*  📍
-------------------------------------------------------------
🗣 `Please select an option ...`]]
            local keyboard = do_keyboard_private()
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
        if query == 'channel' then
            local text = '📡 *کانال ها*'
            local keyboard = do_keyboard_channel()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'robot' then
            local text = [[🔸دیگر
_اطلاعات دیگری در مورد ربات _( 😃]]
            local keyboard = do_keyboard_robot()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'home' then
            local text = [[🔥 بخش _اطلاعات دیگر_ ربات کیوورد]]
            local keyboard = do_keyboard_home()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'share' then
     api.sendContact(msg.from.id, '+12818539367', 'Arian')
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(starts)@KeyWordRobot$',
	    '^/(starts)$',
	    '^/(helps)$',
	    '^###cb:!(home)',
	    '^###cb:!(channel)',
	    '^###cb:!(robot)',
	    '^###cb:!(share)',

    }
}
