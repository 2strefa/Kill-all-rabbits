myAudio = new Audio('static/svg/forest.wav')
myAudio.volume=0.1
myAudio.loop = true
myAudio.play()

$ ->
  $('.game').addClass('blankten')
  $('#sign_up').lightbox_me
    centered: true
    onLoad: ->
        $('#shortlyStart').click ->
          $('.game').removeClass('blankten')
          shortly = new Date()
          shortly.setSeconds(shortly.getSeconds() + 1.5)
          $('#czas_time').countdown
            until: shortly
            layout:'{s<}{sn} {sl}{s>}'
            onExpiry: liftOff
          $('#shortlyStart').trigger('close')
          z1=[]
          total=0
          obj = document.createElement 'audio'
          obj.setAttribute("src", "static/svg/shot.wav")
          obj2 = document.createElement 'audio'
          obj2.setAttribute("src", "static/svg/shot.wav")
          obj3 = document.createElement 'audio'
          obj3.setAttribute("src", "static/svg/shot.wav")
          obj4 = document.createElement 'audio'
          obj4.setAttribute("src", "static/svg/shot.wav")
          obj5 = document.createElement 'audio'
          obj5.setAttribute("src", "static/svg/shot.wav")
          obj6 = document.createElement 'audio'
          obj6.setAttribute("src", "static/svg/shot.wav")
          obj7 = document.createElement 'audio'
          obj7.setAttribute("src", "static/svg/shot.wav")
          obj8 = document.createElement 'audio'
          obj8.setAttribute("src", "static/svg/shot.wav")
          le = document.createElement 'audio'
          le.setAttribute("src", "static/svg/le.wav")
          le2 = document.createElement 'audio'
          le2.setAttribute("src", "static/svg/le.wav")
          le3 = document.createElement 'audio'
          le3.setAttribute("src", "static/svg/le.wav")
          le4 = document.createElement 'audio'
          le4.setAttribute("src", "static/svg/le.wav")
          le5 = document.createElement 'audio'
          le5.setAttribute("src", "static/svg/le.wav")
          le6 = document.createElement 'audio'
          le6.setAttribute("src", "static/svg/le.wav")
          le7 = document.createElement 'audio'
          le7.setAttribute("src", "static/svg/le.wav")

          $ '.playSound'
          .click ->
            $('#zlyzajac3').hide()
            $('#kiter3').show()
            prok = $('input[name=zajac3]').val()
            olek = parseInt(prok)
            obj.play()
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")


          $ '.playSound2'
          .click ->
            $('#zlyzajac').hide()
            $('#kiter').show()
            prok = $('input[name=zajac1]').val()
            olek = parseInt(prok)
            obj.play()
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")

          $ '.playSound3'
          .click ->
            $('#zlyzajac2').hide()
            $('#kiter2').show()
            prok = $('input[name=zajac2]').val()
            olek = parseInt(prok)
            obj.play()
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")

          $ '.playSound4'
          .click ->
            $('#zlyzajac5').hide()
            $('#kiter5').show()
            prok = $('input[name=zajac5]').val()
            olek = parseInt(prok)
            obj.play()
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")

          $ '.playSound5'
          .click ->
            $('#zlyzajacx').hide()
            $('#kiterx').show()
            prok = $('input[name=zajac4]').val()
            olek = parseInt(prok)
            obj5.play()
            $('#kiterx').animate
              opacity: 0
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")


          $ '.playSound6'
          .click ->
            $('#zlyzajacy').hide()
            $('#kitery').show()
            prok = $('input[name=zajac6]').val()
            olek = parseInt(prok)
            obj6.play()
            $('#kitery').animate
              opacity: 0
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")


          $ '.playSound7'
          .click ->
            $('#zlyzajac7').hide()
            $('#kiter7').show()
            prok = $('input[name=zajac7]').val()
            olek = parseInt(prok)
            obj.play()
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")

          $ '.playSound8'
          .click ->
            $('#zlyzajac8').hide()
            $('#kiter8').show()
            prok = $('input[name=zajac8]').val()
            olek = parseInt(prok)
            obj.play()
            z1[0]= olek
            for i in [0...z1.length]
              total += z1[i]
            $('#csert').empty()
            $('#csert').append("<div class=\"scoredane\">SCORE : </div><div id=\"kliknij\" class=\"scoreliczba\">"+total+"</div><input type=\"hidden\" name=\"klika\" value="+total+">")

          $ '.playSound'
          .mouseout ->
            le.play()

          Zajec1 = () ->
            $('.zajec3').css(left: 0)
            $('#zlyzajac3').show()
            $('#kiter3').hide()

            $('.zajec3').animate
              left: '+=90'
              opacity: 0
            $('.zajec3').delay(5000)
            $('.zajec3').animate
              left: '-=90'
              opacity: 1
              500

            $('.zajec3').delay(1000)

            $('.zajec3').animate
              left: '+=90'
              opacity: 0
              500
              Zajec1

          Zajec2 = () ->
            $('.zajec1').css(left: 0)
            $('#zlyzajac').show()
            $('#kiter').hide()

            $('.zajec1').animate
              left: '+=90'
              opacity: 0
            $('.zajec1').delay(7000)
            $('.zajec1').animate
              left: '-=90'
              opacity: 1
              500
            $('.zajec1').delay(500)
            $('.zajec1').animate
              left: '+=90'
              opacity: 0
              500
              Zajec2

          Zajec3 = () ->
            $('.zajec2').css(left: 0)
            $('#zlyzajac2').show()
            $('#kiter2').hide()

            $('.zajec2').animate
              left: '100'
              opacity: 0

            $('.zajec2').delay(4000)
            $('.zajec2').animate
              left: '+=100'
              opacity: 1
              500

            $('.zajec2').delay(500)
            $('.zajec2').animate
              left: '-=100'
              opacity: 0
              500
              Zajec3

          Zajec4 = () ->
            $('.zajec5').css(left: 0)
            $('#zlyzajac5').show()
            $('#kiter5').hide()

            $('.zajec5').animate
              left: '+=90'
              opacity: 0
            $('.zajec5').delay(8000)
            $('.zajec5').animate
              left: '-=90'
              opacity: 1
              500

            $('.zajec5').delay(500)
            $('.zajec5').animate
              left: '+=90'
              opacity: 0
              500
              Zajec4

          Zajec5 = () ->
            $('.zajec6').delay(11500)
            $('.zajec4').css(left: 0)
            $('#zlyzajacx').show()
            $('#kiterx').hide()
            $('#kiterx').animate
              opacity: 1

            $('.zajec4').animate
              left: '+=5000'
              5000
              Zajec5

          Zajec6 = () ->
            $('.zajec6').delay(10800)
            $('.zajec6').css(left: 0)
            $('#zlyzajacy').show()
            $('#kitery').hide()
            $('#kitery').animate
              opacity: 1

            $('.zajec6').animate
              left: '-=5000'
              5000
              Zajec6

          Zajec7 = () ->
            $('.zajec7').css(left: 0)
            $('#zlyzajac7').show()
            $('#kiter7').hide()

            $('.zajec7').animate
              left: '90'
              opacity: 0

            $('.zajec7').delay(4000)
            $('.zajec7').animate
              left: '-=90'
              opacity: 1
              1000

            $('.zajec7').delay(1000)
            $('.zajec7').animate
              left: '+=90'
              opacity: 0
              1000
              Zajec7

          Zajec8 = () ->
            $('.zajec8').css(left: 0)
            $('#zlyzajac8').show()
            $('#kiter8').hide()

            $('.zajec8').animate
              left: '50'
              opacity: 0

            $('.zajec8').delay(5000)
            $('.zajec8').animate
              left: '+=50'
              opacity: 1
              1000

            $('.zajec8').animate
              left: '-=50'
              opacity: 0
              1000
              Zajec8

          Zajec1()
          Zajec2()
          Zajec3()
          Zajec4()
          Zajec5()
          Zajec6()
          Zajec7()
          Zajec8()

  liftOff = ->
    $('#sign_up_koniec').lightbox_me
      centered: true
      kilk = $('input[name=klika]').val()
      $('#sign_up_koniec').empty()
      $('#sign_up_koniec').append("<form action=\".\" method=\"POST\"><h3>Your score is :</h3><br/><h3>"+kilk+" POINTS</h3><label for=\"login\">Login</label><br/><input id=\"id_login\" class=\"login\" name=\"login\"><br/><label for=\"email\">E-mail</label><br/><input id=\"id_email\" class=\"email\" name=\"email\"><br/><button class=\"classname\" type=\"submit\">SEND SCORE</button></form><br>The game was created by Albert Kowalewski from 2Strefa.pl ")
      $('.game').addClass('blankten')