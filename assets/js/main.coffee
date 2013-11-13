$(document).ready ->
	$("a").each ->
		a = new RegExp("/" + window.location.host + "/")
		unless a.test(@href)
			$(this).click (event) ->
				event.preventDefault()
				event.stopPropagation()
				window.open @href, "_blank"

	wordcount = $(".post-content").articleWordCount()
	time = $.timeToRead(wordcount)
	if time == 1 then timeUnits = 'minute' else timeUnits = 'minutes'
	wordcountText = "#{wordcount} words ≅ #{time} #{timeUnits}"
	$("#wordcount").html wordcountText