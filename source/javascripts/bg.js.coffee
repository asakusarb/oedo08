$ ->
  initBg= ->
    windowHeight = $(window).height()
    windowWidth = $(window).width()
    $('.bg').css 'min-height', windowHeight + 'px'

    cloudWidth = 92 #CSS側で指定
    cloudHeight = 42 #CSS側で指定
    logoHeight = windowHeight - 430


    minX = cloudWidth + 50
    maxX = windowWidth / 2 - logoHeight / 2 - cloudWidth - 50
    cloudDisplayHeight = windowHeight - cloudHeight - 150

    # 画面の左側に雲を4つランダム位置に置く
    i = 1
    while i < 5
      minY = cloudHeight + cloudDisplayHeight / 4 * ( i - 1 )
      maxY = cloudDisplayHeight / 4 * i
      cloudX = Math.floor( Math.random()* (maxX + 1 - minX ) ) + minX
      cloudY = Math.floor( Math.random()* (maxY + 1 - minY ) ) + minY
      $('.bg__cloud.is-' + i).css( {'left': cloudX; 'top': cloudY} )
      i++

    # 画面の右側に雲を4つランダム位置に置く
    i = 5
    while i < 9
      minY = cloudHeight + cloudDisplayHeight / 4 * ( i - 5 )
      maxY = cloudDisplayHeight / 4 * ( i - 4 )
      cloudX = Math.floor( Math.random()* maxX )
      cloudY = Math.floor( Math.random()* (maxY + 1 - minY ) ) + minY
      $('.bg__cloud.is-' + i).css( {'right': cloudX; 'top': cloudY} )
      i++


  initLogo= ->
    windowHeight = $(window).height()
    logoHeight = windowHeight - 480
    if logoHeight > 300
      $('.main-visual__logo-image').css({'height': logoHeight;})
    else
      $('.main-visual__logo-image').css({'height': '300px';})

  initLogo()
  initBg()

  $(window).on 'resize', ->
    initLogo()
