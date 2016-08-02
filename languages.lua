return {
	fa = {
        status = {
			  kicked = 'کاربر &&&1 در این گروه مسدود شده است',
             left = 'کاربر &&&1 از گروه خارج شده یا از گروه اخراج شده است',
             administrator = 'ادمین گروه &&&1',
             creator = '&&&1 سازنده گروه',
             unknown = 'این کاربر فعالیتی در گروه نداشته است',
             member = '&&&1 یک کاربر ساده است'
         },
         userinfo = {
             header_1 = '*وضعیت جهانی کاربر*:\n',
             header_2 = '*وضعیت اصلی*:\n',
             warns = '`اخطارها`: ',
             media_warns = '`اخطارهای رسانه`: ',
             group_msgs = '`پیام های داخل گروه`: ',
             group_media = '`رسانه های ارسالی در گروه`: ',
             last_msg = '`آخرین پیام در این گروه`: ',
             global_msgs = '`تعداد کل پیام ها`: ',
             global_media = '`تعداد کل رسانه های ارسالی`: ',
             remwarns_kb = 'حذف اخطارها'
         },
         getban = {
             header = '*وضعیت جهانی* for ',
             nothing = '`موردی یافت نشد`',
             kick = 'اخراج: ',
             ban = 'مسدود: ',
             tempban = 'اخراج مدت دار: ',
             flood = 'اخراج برای اسپم: ',
             warn = 'اخراج برای اخطار: ',
             media = 'اخراج بخاطر ارسال رسانه غیر مجاز: ',
             arab = 'اخراج برای تایپ عربی: ',
             rtl = 'اخراج برای rtl: ',
             kicked = '_اخراج!_',
             banned = '_مسدود!_'
         },
         bonus = {
             general_pm = '_در پیام خصوصی شما ارسال شد_',
             no_user = 'من این کاربر را در گروه ندیدم\n اگر میخواهید این کاربر را به من معرفی کنید لطفا یکی از پیام های ارسال شده توسط ایشان را برای من ریپلای کنید.',
             the_group = 'گروه',
             adminlist_admin_required = 'من مدیر نیستم.\n*فقط درصورت مدیر بودن میتوان لیست میدارن را دریافت کرد*',
             settings_header = 'وضعیت فعلی گروه:\n\n*زبان*: `&&&1`\n',
             reply = 'یک نفر را ریپلای کنید یا یوزرنیم شخصی را بنویسید',
             too_long = 'این پیام خیلی طولانیست و من قادر به ارسال این پیام نیستم',
             msg_me = '_اول به من پیام بده تا بتونم برای شما پیام ارسال کنم_',
             menu_cb_settings = 'روی آیکون ها بزنید',
             menu_cb_warns = 'روی نمابرهای زیر بزنید تا اخطارها تغییر کنند!',
             menu_cb_media = 'بر روی کلید ها بزنید!',
             tell = '*آیدی گروه*: &&&1',
         },
         not_mod = 'شما از مدیران نیستید!',
         breaks_markdown = 'این مدل نشانه گذاری قابل قبول نیست.\n اطلاعات بیشتر برای درست استفاده کردن از قابلیت نشانه گذاری را در [این صفحه](https://telegram.me/GroupButler_ch/46) مطالعه کنید.',
         credits = '*برخی از لینک های کارآمد:*',
         extra = {
             setted = '&&&1 ذخیره شد',
 			new_command = '*دستور جدید ذخیره شد!*\n&&&1\n&&&2',
             no_commands = 'هیچ دستوری ذخیره نشده!',
             commands_list = 'لیست دستورهای ذخیره شده:\n&&&1',
             command_deleted = '&&&1 حذف شد',
             command_empty = '&&&1 وجود ندارد'
         },
         help = {
             mods = {
                 banhammer = "*مدیریت: ابزار اخراج*\n\n"
                             .."`/kick [by reply|username]` = حذف کاربر از گروه (کاربر قابلیت برگشتن به گروه را دارد)\n"
                             .."`/ban [by reply|username]` = مسدود یا بن کردن کاربر (کاربر نمی تواند وارد گروه شود حتی در گروه های معمولی)\n"
                             .."`/tempban [minutes]` = ban an user for a specific amount of minutes (minutes must be < 10.080, one week). For now, only by reply.\n"
                             .."`/unban [by reply|username]` = خارج کردن کاربر از لیست مسدودها\n"
                             .."`/user [by reply|username|id]` = returns a two pages messages: the first shows how many times the user has been banned *in all the groups* (divided in sections), "
                             .."the second page shows some general stats about the user: messages/media in the group, warns received and so on.\n"
                             .."`/status [username|id]` = show the current status of the user `(member|kicked/left the chat|banned|admin/creator|never seen)`.\n"
                             .."`/banlist` = نمایش لیست کاربران مسدود شده، شامل دلیل مسدود شدن (درصورتی که در هنگام استفاده از دستور نوشته شده باشد).\n"
                             .."`/banlist -` = تمیز کردن لیست مسدود ها\n"
                             .."\n*تذکر*: شما میتوانید بعد از دستور ban/ متنی را به عنوان دلیل بن شدن کاربر بنویسید."
                             .." این دستور میتواند برای دلیل بن بودن کاربر استفاده شود.",
                 info = "*مدیریت: اطلاعات گروه*\n\n"
                         .."`/setrules [group rules]` = تعریف قانون جدید برای گروه (این دستور قوانین قبلی را حذف خواهد کرد)\n"
                         .."`/addrules [text]` = اضافه کردن متنی به پایان قوانین گروه\n"
                         .."`/setabout [group description]` = تعریف توضییحات جدید برای گروه (این دستور توضییحات قبلی را حذف خواهد کرد)\n"
                         .."`/addabout [text]` = اضافه کردن متنی به پایان توضییحات گروه\n"
                         .."\n*تذکر:* نشانه دار کردن در این قسمت پشتیبانی می شود..\n"
                         .."برای استفاده درست ازین امکان به [این صفحه](https://telegram.me/GroupButler_ch/46) مراجعه کنید.",
                 flood = "*مدیریت: ضد اسپم*\n\n"
                         .."`/antiflood` = manage the flood settings in private, with an inline keyboard. You can change the sensitivity, the action (kick/ban), and even set some exceptions.\n"
                         .."`/antiflood [number]` = set how many messages a user can write in 5 seconds.\n"
                         .."_Note_ : the number must be higher than 3 and lower than 26.\n",
                 media = "*مدیریت: تنظیمات مدیا*\n\n"
                         .."`/media` = تنظیمات مدیا در پیام خصوصی، ابتدا این دستور را در گروه خود ارسال نمایید تا تنظیمات به پیام خصوصی شما ارسال شود.\n"
                         .."`/warnmax media [number]` = set the max number of warnings before be kicked/banned for have sent a forbidden media.\n"
                         .."`/nowarns (by reply)` = reset the number of warnings for the users (*NOTE: both regular warnings and media warnings*).\n"
                         .."`/media list` = نمایش وضعیت کنونی تنظیمات رسانه\n"
                         .."\n*لیست رسانه های قابل تنظیم*: _image, audio, video, sticker, gif, voice, contact, file, link_\n",
                 welcome = "*مدیزیت: تنظیمات پیام خوش آمدگویی*\n\n"
                             .."`/menu` = فعال و غیر فعال کردن پیام خوش آمدگویی توسط صفحه کلید \n"
                             .."\n*شخصی سازی پیام خوش آمد گویی:*\n"
                             .."`/welcome سلام $name به گروه ما خوش آمدید`\n"
                             .."بعد از دستور `/welcome` متن خوش آمدگویی خود رابنویسید.\n"
                             .." _$username_ (نمایش یوزرنیم کاربر); _$name_ (نمایش نام کاربر); _$id_ (نمایش شناسه کاربری); _$title_ (نمایش نام گروه شما).\n"
                             .."\nارسال استیکر و گیف بعنوان پیام خوش آمدگویی\n"
                             .."ابتدا استکیر و یا گیف مورد نظر را ارسال نمایید سپس به دستور `/welcome` استیکر و گیف مورد نظر را ریپلای کنید\n"
                             .."\nترکیب پیام خوش آمدگویی با سایر دستورها\n"
                             .."شما میتوانید پیام خوش آمدگویی را با  توضییحات گروه و یا قوانین گروه ترکیب کنید\n"
                             .."شما میتوانید با دستور `/welcome` و کد های زیر پیام خوش آمدگویی را ترکیب نمایید\n"
                             .."_کد ها_ : *r* = قوانین; *a* = توضییحات گروه; *m* = لیست مدیران.\n"
                             .."برای مثال, با دستور \"`/welcome rm`\", پیام خوش آمدگویی همرا با قوانین و لیست مدیران نمایش داده خواهد شد.",
                 extra = "*مدیریت: ذخیره دستورها*\n\n"
                         .."`/extra [#trigger] [reply]` = با ریپلای ذخیره خواهد شد و زمانی که کاربران trigger بنویسند ربات پاسخ خواهد داد.\n"
                         .."_مثال_ : با \"`/extra #hello Good morning!`\", ربات جواب خواهد داد \"Good morning!\" اگر کاربری #hello بنویسد.\n"
                         .."شما میتوانید مدیا را ریپلای کنید (_photo, file, vocal, video, gif, audio_) با `/extra #yourtrigger` دستور ذخیره میشود و هر کاربری #دستور شما را بفرستد ربات پاسخ خواهد داد.\n"
                         .."`/extra list` = نمایش دستورهای ذخیره شده\n"
                         .."`/extra del [#trigger]` = حذف دستور \n"
                         .."\n*تذکر:* نشانه دار کردن در این قسمت پشتیبانی می شود..\n"
                         .."برای استفاده درست ازین امکان به [این صفحه](https://telegram.me/GroupButler_ch/46) مراجعه کنید.",
                 warns = "*مدیریت: اخطارها*\n\n"
                         .."`/warn [by reply]` = دادن اخطار به کاربر از طریق ریپلای کردن پیام. که بعد از  رسیدن به حداکثر تعداد کاربر اخراج یا مسدود می شود.\n"
                         .."`/warnmax` = set the max number of the warns before the kick/ban.\n"
                         .."\nHow to see how many warns a user has received: the number is showed in the second page of the `/user` command. In this page, you will see a button to reset this number.",
                 char = "*مدیریت: کاراکترهای خاص*\n\n"
                         .."`/menu` = شما در پیام خصوصی کیبورد تنظیمات دریافت خواهید کرد\n"
                         .."شما دراینجا دو گزینه میبینید: _Arab و RTL_.\n"
                         .."\n*Arab*: when Arab it's not allowed (🚫), everyone who will write an arab character will be kicked from the group.\n"
                         .."*Rtl*: it stands for 'Righ To Left' character, and it's the responsible of the weird service messages that are written in the opposite sense.\n"
                         .."When Rtl is not allowed (🚫), everyone that writes this character (or that has it in his name) will be kicked.",
                 links = "*مدیریت: links*\n\n"
                         .."`/setlink [link|'no']` : تنظیم و یا حذف لینک، ادمین ها میتوانند درخواست لینک کنند\n"
                         .."`/link` = گرفتن لینک گروه در صورتی که سازنده گروه قبلا ثبت کرده باشد\n"
                         .."\n*تذکر*: اگر لینک ارسال صحیح نباشد ربات به شما پاسخی نمی دهد.",
                 lang = "*مدیریت: زبان گروه*\n\n"
                         .."`/lang` = انتخاب زبان گروه، در پیام خصوصی هم قابل استفاده است.\n"
                         .."\n*Note*: translators are volunteers, so I can't ensure the correctness of all the translations. And I can't force them to translate the new strings after each update (not translated strings are in english)."
                         .."\nAnyway, translations are open to everyone. Use `/strings` command to receive a _.lua_ file with all the strings (in english).\n"
                         .."Use `/strings [lang code]` to receive the file for that specific language (example: _/strings es_ ).\n"
                         .."In the file you will find all the instructions: follow them, and as soon as possible your language will be available ;)",
                 settings = "*مدیریت: تنظیمات گروه*\n\n"
                             .."`/menu` = مدیریت تنظیمات گروه توسط کیبورد\n"
                             .."`/report [on/off]` (by reply) = در صورت خاموش بودن کاربران نمیتوانند و درصورت روشن بودن کاربران میتوانند از دستور @admin استفاده کنند.\n",
             },
             all = '*دستورهای عمومی*:\n'
                     ..'`/dashboard` : نمایش اطلاعات گروه در پیام خصوصی\n'
                     ..'`/rules` (if unlocked) : نمایش قوانین گروه\n'
                     ..'`/about` (if unlocked) : نمایش توضییحات گروه\n'
                     ..'`/adminlist` (if unlocked) : نمایش مدیران گروه\n'
                     ..'`@admin` (if unlocked) : by reply= گزارش پیام برای تمام مدیران; no reply (with text)= ارسال فیدبک به مدیران\n'
                     ..'`/kickme` : خارج شدن توسط ربات\n'
                     ..'`/faq` : برخی از سوالات متداول\n'
                     ..'`/id` : گرفتن آیدی گروه یا گرفتن آیدی کاربر اگر ریپلای کنید\n'
                     ..'`/echo [text]` : نشانه دار کردن متن در پیام خصوصی\n'
                     ..'`/info` : نمایش برخی اطلاعات مربوط به ربات\n'
                     ..'`/group` : گرفتن گروه بحث ربات\n'
                     ..'`/c` <feedback> : send a feedback/report a bug/ask a question to my creator. _ANY KIND OF SUGGESTION OR FEATURE REQUEST IS WELCOME_. He will reply ASAP\n'
                     ..'`/help` : نمایش این پیام.'
 		            ..'\n\n اگر شما از امکانات این ربات خوشتان آمده میتوانید [از اینجا](https://telegram.me/storebot?start=groupbutler_bot) به ربات رای بدید.',
		     private = 'سلام, *&&&1*!\n'
                    ..'من یک ربات برای مدیریت گروه هم اکنون بالای 1000 گروه را مدیریت می کنم 🤗\n'
                    ..'\n_و چه کمکی به شما میتونم بکنم؟_\n'
                    ..'بسیار عالی، من قابلیت های بسیار زیادی دارم\n'
                    ..'• شما می توانید کاربران را در گروه اخراج کنید و یا از گروه محروم کنید (حتی در گروه های معمولی)\n'
                    ..'• ✍🏻 میتوانید قوانین و توضیحاتی برای گروه بنویسید\n'
                    ..'• 🔰و میتوانید سیستم ضد اسپم فوق پیشرفته من را فعال کنید و همینطور می توانم کاربرانی که در گروه شما تبلیغ می کنند اخراج کنم (بخش تنظیمات رسانه)🔰\n'
                    ..'• 🗣 میتوانم پیام خوش آمد گویی مورد نظر شما را به کاربران بدم و حتی میتوانید اینکارا برای اولین بار در تلگرام با استیکر 🏖 یا گیف 🌠 انجام دهم.\n'
                    ..'• ⚠️ می توانم به کاربران اخطار بدم و کاربرانی که اخطار زیاد گرفتند را اخراج کنم‼️\n'
                    ..'• می توانم رسانه های ارسالی به گروه شما را مدیریت کنم : گیف 🌠، عکس 🌅، ویدئو📼، صدای ضبط شده 🗣، شماره مخطابین 👥، استیکر 🏖، لینک گروه 🌐\n'
                    ..'...\n'
                    ..'برای انجام کارهای بالا لطفا من را مدیر گروه کنید \n[🐳 چگونه کیوورد را مدیر کنم؟🐳](https://telegram.me/KeyWordCh/2) \n'
                    ..'💻 Developer : [Arian](https://telegram.me/arian721) \n',
           group_success = '_👤 پیام خصوصی فرستاده شد_',
             group_not_success = '_لطفا اول به من پیام دهید تا بتوانم به شما پیام بفرستم_',
             initial = 'نقش خود را انتخاب کنید تا بتوانید دستورها را ببینید:',
             kb_header = 'Tap on a button to see the *related commands*'
         },
         links = {
             no_link = 'هیچ لینکی برای این گروه تعریف نشده از سازنده بخواهید یک لینک جدید تعریف کند!',
             link = '[&&&1](&&&2)',
             link_no_input = 'این یک گروه عمومی نیست لطفا بعد از دستور لینک خود را بنویسید',
             link_invalid = 'این لینک معتبر نیست',
             link_updated = 'لینک بروز رسانی شد.\n*لینک جدید*: [&&&1](&&&2)',
             link_setted = 'لینک گروه ذخیره شد.\n*لینک ذخیره شده*: [&&&1](&&&2)',
             link_unsetted = 'لینک حذف شد',
         },
         mod = {
             modlist = '*سازنده گروه*:\n&&&1\n\n*مدیران*:\n&&&2'
         },
         report = {
             no_input = 'جلوی علامت تعجب ! باگ یا پیشنهاد خود را بنویسید',
             sent = 'فیدبک ارسال شد!',
             feedback_reply = '*Hello, this is a reply from the bot owner*:\n&&&1',
         },
         service = {
             welcome = 'Hi &&&1, and welcome to *&&&2*!',
             welcome_rls = 'Total anarchy!',
             welcome_abt = 'هیچ توضییحاتی ذخیره نشده',
             welcome_modlist = '\n\n*سازنده گروه*:\n&&&1\n*مدیران*:\n&&&2',
             abt = '\n\n*توضییحات*:\n',
             rls = '\n\n*قوانین*:\n',
         },
         setabout = {
             no_bio = 'توضییحاتی برای این گروه ذخیره نشده',
             no_bio_add = 'توضییحاتی برای گروه ذخیره نشده\n از دستور /setabout برای ذخیره استفاده کنید',
             no_input_add = 'لطفا بعد از دستور "/addabout" متنی بنویسید',
             added = '*توضییحات اضافه شد:*\n"&&&1"',
             no_input_set = 'لطفا بعد از دستور "/setabout" متنی بنویسید ',
             clean = 'توضییحات حذف شد',
             new = '*توضییحات جدید:*\n"&&&1"',
             about_setted = 'توضییحات جدید با موفقیت ذخیره شد!'
         },
         setrules = {
             no_rules = 'قوانینی ذخیره نشده',
             no_rules_add = 'هیچ قوانینی ذخیره نشده.\nاز دستور /setrules برای ذخیره قوانین استفاده کنید',
             no_input_add = 'لطفا بعد از دستور "/addrules" متنی بنویسید',
             added = '*قوانین اضافه شد:*\n"&&&1"',
             no_input_set = 'لطفا بعد از دستور "/setrules" متنی بنویسید ',
             clean = 'قوانین حذف شد',
             new = '*قوانین جدید:*\n"&&&1"',
             rules_setted = 'قوانین جدید با موفقیت ذخیره شد'
         },
         settings = {
             disable = {
                 rules_locked = 'دستور /rules فقط برای مدیران فعال شد',
                 about_locked = 'دستور /about فقط برای مدیران فعال شد',
                 welcome_locked = 'پیام خوش آمدگویی نمایش داده نخواهد شد',
                 modlist_locked = 'دستور /adminlist فقط برای مدیران فعال شد',
                 flag_locked = '/flag command won\'t be available from now',
                 extra_locked = 'دستور #extra فقط برای مدیران فعال شد',
                 flood_locked = 'ضد اسپم خاموش شد',
                 report_locked = 'دستور @admin از دسترس خارج شد',
                 admin_mode_locked = 'Admin mode off',
             },
             enable = {
                 rules_unlocked = 'دستور /rules برای همه فعال شد',
                 about_unlocked = 'دستور /about برای همه فعال شد',
                 welcome_unlocked = 'پیام خوش آمدگویی نمایش داده می شود',
                 modlist_unlocked = 'دستور /adminlist برای همه فعال شد',
                 flag_unlocked = '/flag command is now available',
                 extra_unlocked = 'دستور #extra برای همه فعال شد',
                 flood_unlocked = 'ضد اسپم روشن شد',
                 report_unlocked = 'دستور @admin فعال شد',
                 admin_mode_unlocked = 'Admin mode on',
             },
             welcome = {
                 no_input = 'Welcome and...?',
                 media_setted = 'New media setted as welcome message: ',
                 reply_media = 'Reply to a `sticker` or a `gif` to set them as *welcome message*',
                 a = 'New settings for the welcome message:\nRules\n*About*\nModerators list',
                 r = 'New settings for the welcome message:\n*Rules*\nAbout\nModerators list',
                 m = 'New settings for the welcome message:\nRules\nAbout\n*Moderators list*',
                 ra = 'New settings for the welcome message:\n*Rules*\n*About*\nModerators list',
                 rm = 'New settings for the welcome message:\n*Rules*\nAbout\n*Moderators list*',
                 am = 'New settings for the welcome message:\nRules\n*About*\n*Moderators list*',
                 ram = 'New settings for the welcome message:\n*Rules*\n*About*\n*Moderators list*',
                 no = 'New settings for the welcome message:\nRules\nAbout\nModerators list',
                 wrong_input = 'Argument unavailable.\nUse _/welcome [no|r|a|ra|ar]_ instead',
                 custom = '*Custom welcome message* setted!\n\n&&&1',
                 custom_setted = '*Custom welcome message saved!*',
                 wrong_markdown = '_Not setted_ : I can\'t send you back this message, probably the markdown is *wrong*.\nPlease check the text sent',
             },
             resume = {
                 header = 'تنظیمات فعلی *&&&1*:\n\n*زبان*: `&&&2`\n',
                 w_a = '*Welcome type*: `welcome + about`\n',
                 w_r = '*Welcome type*: `welcome + rules`\n',
                w_m = '*Welcome type*: `welcome + adminlist`\n',
                 w_ra = '*Welcome type*: `welcome + rules + about`\n',
                 w_rm = '*Welcome type*: `welcome + rules + adminlist`\n',
                 w_am = '*Welcome type*: `welcome + about + adminlist`\n',
                 w_ram = '*Welcome type*: `welcome + rules + about + adminlist`\n',
                 w_no = '*Welcome type*: `welcome only`\n',
                w_media = '*Welcome type*: `gif/sticker`\n',
                w_custom = '*Welcome type*: `custom message`\n',
                 legenda = '✅ = _فعال_\n🚫 = _غیرفعال_\n👥 = _ارسال در گروه_\n👤 = _ارسال به خصوصی کاربران_',
             },
             char = {
                 arab_kick = 'Senders of arab messages will be kicked',
                 arab_ban = 'Senders of arab messages will be banned',
                 arab_allow = 'Arab language allowed',
                 rtl_kick = 'The use of the RTL character will lead to a kick',
                 rtl_ban = 'The use of the RTL character will lead to a ban',
                 rtl_allow = 'RTL character allowed',
             },
             broken_group = 'There are no settings saved for this group.\nPlease run /initgroup to solve the problem :)',
             Rules = '/rules',
             About = '/about',
             Welcome = 'Welcome message',
             Modlist = '/adminlist',
             Flag = 'Flag',
             Extra = 'Extra',
             Flood = 'Anti-flood',
             Rtl = 'Rtl',
             Arab = 'Arab',
             Report = 'Report',
            Admin_mode = 'Admin mode',
         },
         warn = {
             warn_reply = 'Reply to a message to warn the user',
             changed_type = 'New action on max number of warns received: *&&&1*',
            mod = 'A moderator can\'t be warned',
             warned_max_kick = 'User &&&1 *kicked*: reached the max number of warnings',
             warned_max_ban = 'User &&&1 *banned*: reached the max number of warnings',
             warned = '&&&1 *have been warned.*\n_Number of warnings_   *&&&2*\n_Max allowed_   *&&&3*',
             warnmax = 'Max number of warnings changed&&&3.\n*Old* value: &&&1\n*New* max: &&&2',
             getwarns_reply = 'Reply to a user to check his numebr of warns',
             getwarns = '&&&1 (*&&&2/&&&3*)\nMedia: (*&&&4/&&&5*)',
             nowarn_reply = 'Reply to a user to delete his warns',
             warn_removed = '*Warn removed!*\n_Number of warnings_   *&&&1*\n_Max allowed_   *&&&2*',
             ban_motivation = 'Too many warnings',
             inline_high = 'The new value is too high (>12)',
             inline_low = 'The new value is too low (<1)',
             zero = 'The number of warnings received by this user is already _zero_',
             nowarn = 'The number of warns received by this user have been *reset*'
         },
         setlang = {
             list = '*لیست زبان های موجود:*',
             success = '*زبان جدید ذخیره شد:* &&&1',
             error = 'زبان مورد نظر پشتیبانی نمی شود'
         },
 		banhammer = {
             kicked = '`&&&1` اخراج `&&&2`!',
             banned = '`&&&1` مسدود `&&&2`!',
             already_banned_normal = '&&&1 قبلا مسدود شده!',
             unbanned = 'کاربر از لیست مسدودها خارج شد',
             reply = 'کاربری را ریپلای کنید',
             globally_banned = '&&&1 have been globally banned!',
             not_banned = 'کاربر مسدود نیست',
             banlist_header = '*کاربران مسدود شده*:\n\n',
             banlist_empty = '_لیست خالیست_',
             banlist_error = '_یک اشکال در هنگام تمیز کردن لیست پیش آمد_',
             banlist_cleaned = '_لیست مسدودین تمیز شد_',
             tempban_zero = 'For this, you can directly use /ban',
             tempban_week = 'The time limit is one week (10.080 minutes)',
             tempban_banned = 'User &&&1 banned. Ban expiration:',
             tempban_updated = 'Ban time updated for &&&1. Ban expiration:',
             general_motivation = 'من نمیتوانم این کاربر را اخراج کنم.\nممکنه ادمین نباشم یا این کاربر ادمین است'
         },
         floodmanager = {
             number_invalid = '`&&&1` is not a valid value!\nThe value should be *higher* than `3` and *lower* then `26`',
             not_changed = 'The max number of messages is already &&&1',
             changed_plug = 'The *max number* of messages (in *5 seconds*) changed _from_  &&&1 _to_  &&&2',
             kick = 'Now flooders will be kicked',
             ban = 'Now flooders will be banned',
             changed_cross = '&&&1 -> &&&2',
             text = 'Texts',
             image = 'Images',
             sticker = 'Stickers',
             gif = 'Gif',
             video = 'Videos',
             sent = '_تنظیمات ضد اسپم به شما ارسال می شود_',
             ignored = '[&&&1] توسط ضد اسپم نادیده گرفته می شود',
             not_ignored = '[&&&1] توسط ضد اسپم محاسبه خواهد شد',
             number_cb = 'حساسیت فعلی. روی  یا - بزنید ',
             header = 'شما میتوانید تنظیمات ضد اسپم را اینجا ببینید.\n'
                 ..'\n*ردیف اول*\n'
                 ..'• *ON/OFF*: وضعیت فعلی ضد اسپم\n'
                 ..'• *Kick/Ban*: عکس العمل وقتی کسی اسپم میفرستد\n'
                 ..'\n*ردیف دوم*\n'
                 ..'• شما میتوانید با *+/-* حساسیت سیستم را تغییر دهید\n'
 			    ..'• عدد مورد نظر تعداد پیامیست که کاربر میتواند در 5 ثانیه ارسال کند\n'
 			..'• حداکثر: _25_ - حداقل: _4_\n'
                ..'\n*ردیف سوم* و ردیف های بعدی\n'
 				..'شما میتوانید رسانه ها و پیام ها را در شمارش ضد اسپم تفکیک کنید:\n'
 				..'• ✅: رسانه در سیستم ضد اسپم محاسبه نخواهد شد\n'
 		        ..'• ❌: رسانه در سیستم ضد اسپم محاسبه خواهد شد\n'
 				..'• *Note*: در قسمت متن تمام پیام ها غیر از رسانه های انتخابی در اینجا محاسبه خواهد شد'
         },
         mediasettings = {
 			warn = 'This kind of media are *not allowed* in this group.\n_The next time_ you will be kicked or banned',
             settings_header = '*Current settings for media*:\n\n',
             changed = 'New status for [&&&1] = &&&2',
         },
         preprocess = {
             flood_ban = '&&&1 بخاطر اسپم مسدود شد',
             flood_kick = '&&&1 بخاطر اسپم اخراج شد',
             media_kick = '&&&1 *اخراج*: ارسال مدیا غیرمجاز',
             media_ban = '&&&1 *مسدود*: ارسال مدیا غیرمجاز!',
             rtl_kicked = '&&&1 *kicked*: rtl character in names/messages not allowed!',
             arab_kicked = '&&&1 *kicked*: arab message detected!',
             rtl_banned = '&&&1 *banned*: rtl character in names/messages not allowed!',
             arab_banned = '&&&1 *banned*: arab message detected!',
             flood_motivation = 'اخراج برای اسپم',
             media_motivation = 'ارسال مدیا غیرمجاز',
             first_warn = 'این مدیا در این گروه غیرمجاز است'
         },
         kick_errors = {
             [1] = 'من مدیر نیستم نمی توانم کسی را اخراج کنم',
             [2] = 'نمیتوانم مدیر را اخراج کنم!',
             [3] = 'There is no need to unban in a normal group',
             [4] = 'This user is not a chat member',
         },
         flag = {
             no_input = 'شخصی را ریپلای کنید, یا بعد از دستور \'@admin\' چیزی بنویسید تا ارسال شود!',
             reported = 'گزارش شد!',
             no_reply = 'کاربری را ریپلای کنید',
             blocked = 'کاربران نمی توانند از دستور @admin استفاده کنند!',
             already_blocked = 'قبلا غیرفعال شده!',
             unblocked = 'حالا کاربران میتوانند از دستور @admin استفاده کنند!',
             already_unblocked = 'قبلا غیرفعال شده!',
        },
         all = {
             dashboard = {
                 private = '_داشبورد گروه برای شما ارسال شد_',
                 first = 'Navigate this message to see *all the info* about this group!',
                 antiflood = '- *Status*: `&&&1`\n- *Action* when an user floods: `&&&2`\n- Number of messages *every 5 seconds* allowed: `&&&3`\n- *Ignored media*:\n&&&4',
                 settings = 'Settings',
                 admins = 'Admins',
                 rules = 'Rules',
                 about = 'Description',
                 welcome = 'Welcome message',
               extra = 'Extra commands',
                media = 'Media settings',
                 flood = 'Flood settings'
             },
             menu = '_فهرست تنظیمات برای شما ارسال شد_',
            menu_first = 'تنظیمات گروه را مدیریت کنید\n'
 			    ..'\n برخی دستور ها (_/rules, /about, /adminlist, #extra commands_) میتوانند برای کاربران عادی غیر فعال شوند\n'
 				..'وقتی دستور ها برای کاربران عادی غیرفعال شود چه اتفاقی می افتد:\n'
 				..'• اگر برای کاربران فعال باشد ربات پاسخ را در گروه ارسال خواهد کرد\n'
 				..'• اگر برای کاربران عادی غیر فعال شود ربات پاسخ دستور را در پیام خصوصی کاربر ارسال خواهد کرد.\n'
 				..'\nآیکون های زیر وضعیت نوع نمایش دستور را نشان می دهد:\n'
                 ..'• 👥: ربات در گروه پاسخ خواهد داد\n'
                ..'• 👤: ربات پاسخ را در پیام خصوصی ارسال خواهد کرد\n'
                ..'\n*Other settings*: for the other settings, icon are self explanatory\n',
             media_first = 'Tap on a voice in the right colon to *change the setting*\n'
                         ..'You can use the last line to change how many warnings should the bot give before kick/ban someone for a forbidden media\n'
                         ..'The number is not related the the normal `/warn` command',
         },
     },
}
