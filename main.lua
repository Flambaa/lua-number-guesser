function guesser ()
    math.randomseed(os.time())
    number = math.random(1,100)
    player = {}
    player.guess = 0
    --print (number)
    while ( player.guess ~= number ) do
      print("Guess a number between 1 and 100")
      player.answer = io.read()
      player.guess = tonumber(player.answer)
      if ( player.guess > number ) then
        print("Too high")
      elseif ( player.guess < number) then
        print("Too low")
      else
        print("That's right!")
      end
    end
    playagain()
  end
  
  function playagain ()
    io.write('Do you want to play?/Wanna play again?','!\n')
    io.write('1 = yes, 0 = no','!\n')
    yesno = io.read()
    print("your choice was", yesno)
    if yesno == '1' then
      guesser ()
    else
      print("You Exited the game!")
    end
  end
  playagain()
  
  