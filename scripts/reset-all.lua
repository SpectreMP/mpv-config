mp.add_key_binding(nil, "reset-all", function()
    local opts = {
       
       
        {"video-zoom", "0"},
        {"panscan", "0"},
        {"brightness", "0"},
        {"contrast", "0"},
        {"gamma", "0"},
        {"saturation", "0"},
        {"video-aspect-override", "no"},
	    {"speed", "1"},
		{"audio-delay", "0"},
		{"sub-delay", "0"},
    }

    for _, pair in ipairs(opts) do
        mp.set_property(pair[1], pair[2])
    end

    mp.osd_message("Все параметры сброшены: ")
	
	
	local text = [[
Сброшены параметры:

• video-zoom — масштаб видео
• panscan — панскан
• brightness — яркость
• contrast — контраст
• gamma — гамма
• saturation — насыщенность
• video-aspect-override — соотношение сторон видео
• speed — скорость воспроизведения
• audio-delay — задержка аудио
• sub-delay — задержка субтитров



]]

mp.osd_message(text, 6)  -- 6 секунд отображения

	
	
end)
