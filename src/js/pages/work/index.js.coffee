Page = require '../../page.js.coffee'

class WorkPage extends Page
  NAME: 'work'

  URLS: [
    ['https://github.com/micahsoftdotexe', 'GitHub']
    ['https://wiki.archlinux.org/', 'Arch Wiki']
  ]

  constructor: ->
    # Item-based method is too expensive, use this instead
    @collection = @URLS.map (item)=>
      {html: ()-> "<a class='nav' href='#{item[0]}'>#{item[1]} <span style='color: #555555;'>#{item[0]}</span></a>"}

module.exports = WorkPage
