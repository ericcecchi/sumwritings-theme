$.extend
  timeToRead: (int) ->
    Math.round(int / 200) # 200 = number of words per minute

$.fn.wordCount = () ->
  s = $(this).text()
  if s
    if s.length == 0
      len = 0
    else
      m1 = s.replace(/\s/g,'+')
      m = m1.replace(/^\s/g,'+')
      len = countWords(m)
  if len then len else 0

$.fn.articleWordCount = () ->
  words = 0
  $(this).children().each ->
    words += $(this).wordCount()

  console.log words
  words

countWords = (str) ->
  str1 = str.replace(/\+*$/g, "")
  str2 = str1.replace(/\++/g, " ")
  temp = new Array()
  temp = str2.split(" ")
  temp.length
