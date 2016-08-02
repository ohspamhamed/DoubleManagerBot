local function make_keyboard(mod, mod_current_position)
	local keyboard = {}
	keyboard.inline_keyboard = {}
	if mod then --extra options for the mod
	    local list = {
	        ['بن/مسدود کردن= ] = !banhammer',
	        ['اطلاعات گروه'] = '!info',
	        ['فلود منیجر'] = '!flood',
	        ['تنظیمات مدیا'] = '!media',
	        ['تنظیمات خوش آمد گویی'] = '!welcome',
	        ['تنظیمات ظاهری'] = '!settings',
	        ['دستورات پیشرفته'] = '!extra',
	        ['اخطار ها'] = '!warns',
	        ['تنظیمات کاراکتر ها'] = '!char',
	        ['لینک ها'] = '!links',
	        ['زبان ها'] = '!lang'
        }
        local line = {}
        for k,v in pairs(list) do
            --if mod_current_position ~= v:gsub('!', '') then --(to remove the current tab button)
            if next(line) then
                local button = {text = ' '..k, callback_data = v}
                --change emoji if it's the current position button
                if mod_current_position == v:gsub('!', '') then button.text = '🐳 '..k end
                table.insert(line, button)
                table.insert(keyboard.inline_keyboard, line)
                line = {}
            else
                local button = {text = ' '..k, callback_data = v}
                --change emoji if it's the current position button
                if mod_current_position == v:gsub('!', '') then button.text = '•'..k end
                table.insert(line, button)
            end
            --end --(to remove the current tab button)
        end
        if next(line) then --if the numer of buttons is odd, then add the last button alone
            table.insert(keyboard.inline_keyboard, line)
        end
    end
    local bottom_bar
    if mod then
		bottom_bar = {{text = '🐳کاربران عادی ', callback_data = '!user'}}
	else
	    bottom_bar = {{text = '🐳 ادمین های گروه', callback_data = '!mod'}}
	end
	table.insert(bottom_bar, {text = '🐳 درباره', callback_data = '!info_button'}) --insert the "Info" button
	table.insert(keyboard.inline_keyboard, bottom_bar)
	return keyboard
end

local function do_keybaord_credits()
	local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'به من رای بده', url = 'https://telegram.me/storebot?start='..bot.username},
		},
		{
		    {text = '🔙', callback_data = '!user'}
        }
	}
	return keyboard
end

local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👥 اضافه کردن من به گروه', url = 'https://telegram.me/'..bot.username..'?startgroup=new'},
            },
            {
    		{text = '🐳 ایدی ادمین', url = 'https://telegram.me/Arian721'},
    		{text = '🐳 ایدی ادمین', url = 'https://telegram.me/Kiarash_Gh14'},
	    },
	    {
	        {text = '🐳 همه دستورات گروه', callback_data = '!user'},
	    },
	    {
	        {text = '🎩 گروه ساپورت', url = 'https://telegram.me/joinchat/ChhotD9mfPqPZByA3yaQ-Q'},
            },
            {
          {text = 'ℹ اطلاعات بیشتر', callback_data = '!home'}
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
    local keyboard = make_keyboard()
    if blocks[1] == 'help' then
        if msg.chat.type == 'private' then
            local message = make_text(lang[ln].help.private, msg.from.first_name:mEscape())
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
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
        local with_mods_lines = true
        if query == 'user' then
            text = lang[ln].help.all
            with_mods_lines = false
        elseif query == 'mod' then
            text = lang[ln].help.kb_header
        end
        if query == 'info' then
        	text = lang[ln].help.mods[query]
        elseif query == 'banhammer' then
        	text = lang[ln].help.mods[query]
        elseif query == 'flood' then
        	text = lang[ln].help.mods[query]
        elseif query == 'media' then
        	text = lang[ln].help.mods[query]
        elseif query == 'welcome' then
        	text = lang[ln].help.mods[query]
        elseif query == 'extra' then
        	text = lang[ln].help.mods[query]
        elseif query == 'warns' then
        	text = lang[ln].help.mods[query]
        elseif query == 'char' then
        	text = lang[ln].help.mods[query]
        elseif query == 'links' then
        	text = lang[ln].help.mods[query]
        elseif query == 'lang' then
        	text = lang[ln].help.mods[query]
        elseif query == 'settings' then
        	text = lang[ln].help.mods[query]
        end
        keyboard = make_keyboard(with_mods_lines, query)
        local res, code = api.editMessageText(msg.chat.id, msg.message_id, text, keyboard, true)
        if not res and code and code == 111 then
            api.answerCallbackQuery(msg.cb_id, '❗️Error/Contact @Arian721')
        elseif query ~= 'user' and query ~= 'mod' and query ~= 'info_button' then
            api.answerCallbackQuery(msg.cb_id, '🐳 '..lang[ln].help.mods[query]:sub(1, string.find(lang[ln].help.mods[query], '\n')):mEscape_hard())
        end
    end
end

return {
	action = action,
	admin_not_needed = true,
	triggers = {
	    '^/(start)$',
	    '^/(help)$',
	    '^###cb:!(user)',
	    '^###cb:!(info_button)',
	    '^###cb:!(mod)',
	    '^###cb:!(info)',
	    '^###cb:!(banhammer)',
	    '^###cb:!(flood)',
	    '^###cb:!(media)',
	    '^###cb:!(links)',
	    '^###cb:!(lang)',
	    '^###cb:!(welcome)',
	    '^###cb:!(extra)',
	    '^###cb:!(warns)',
	    '^###cb:!(char)',
	    '^###cb:!(settings)',
    }
}
