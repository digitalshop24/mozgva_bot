# coding: UTF-8

require 'telegram/bot'

TOKEN = '390226364:AAG_hpGzIrG7VIvWAOMJjYmsZMUNgsbUyxQ'

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start', 'Привет', 'Здраствуйте', 'привет'
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "Привет-привет #{message.from.first_name}"
				)
		when '/help'
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "Я могу записать тебя на игру. Только мне надо узнать из какого ты города."
				)	
		when '/schedule'
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "тут расписание"
				)		
		else
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "#{message.from.first_name} я пока мало чего умею. Только /start и /help /schedule"
				)
		end
	end
end
