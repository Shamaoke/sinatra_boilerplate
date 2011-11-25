var One = (function() {
  function init() {
    elm = document.getElementById('result')
    txt = document.createTextNode('ok!')

    elm.appendChild(txt)
  }

  function start() {
    init()
  }

  return {
    start: start
  }
})()
