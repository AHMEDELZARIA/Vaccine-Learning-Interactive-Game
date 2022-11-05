-- THIS CODE IS MISSING COMMENTS
myShapes model =
    case model.state of
        Scene0  ->
            [ text "Scene 0"
                  |> centered
                  |> filled black
            , group
                  [    hospitalBackground
                       |> scale 0.9
                       |> move (0, 20)
                        ,
                        pacMan model
                        |> move (0,-40)
                        ,
                        doctor
                        |> move (-55,0)
                        ,
                        scene1Speech
                        |> move (-15,17)
                        ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Start"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Start
            ]
        Scene2  ->
            [ text "Scene 2"
                  |> centered
                  |> filled black
            , group
                  [    
                       hospitalBackground
                       ,
                        pacMan model 
                      |> move (60*sin(1*model.time) , 0)
                      |> scale 0.4
                      |> move (60,-10)
                       ,
                       doctora
                       |> move (-60,20)
                       |> scale 0.9
                       ,
                       rect 120 40
                       |> filled white
                       |> move (28,45)
                       ,
                       text "Health care worker:"
                       |> filled black
                       |> scale 0.6
                       |> move (-30,55)
                       ,
                       text "I can help you learn about the vaccine!"
                       |> filled black
                       |> scale 0.6
                       |> move (-30,45)
                       ,
                       text "But you must complete the vaccine"
                       |> filled black
                       |> scale 0.6
                       |> move (-30,37)
                       ,
                       text "before you get to sick with Coronavirus!"
                       |> filled black 
                       |> scale 0.6
                       |> move (-30,30)
                       ,

   
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap S2S3
            ]
        Scene3  ->
            [ text "Scene 3"
                  |> centered
                  |> filled black
            , group
                  [    
                        labBackground
                        |> move (25, 25)
                        ,
                        doctor 
                        |> scale 0.5
                        |> move (-40, 0)
                        ,
                        rect 200 10
                        |> filled black
                        |> move (20, 50)
                        ,
                        text "Doctor Smith: The first step is addng either mRNA or DNA"
                        |> filled white
                        |> scale 0.5
                        |> move (-60, 48)
                        ,
                        text "Hint: This has 2 strands. It also makes up our Genetic Code."
                        |> filled darkGreen
                        |> scale 0.5
                        |> move (-50, 35)
                        ,
                        mRNA
                        |> scale 0.8
                        |> move (20, 20 + 5*sin(model.time))
                        ,
                        dna
                        |> scale 0.8
                        |> move (20, -40 + 5*sin(model.time))
                        ,
                        text "mRNA"
                        |> filled black
                        |> scale 0.5
                        |> move (70, 10)
                        ,
                        text "DNA"
                        |> filled black
                        |> scale 0.5
                        |> move (70, -15)
                        ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (107, 13)
                            |> scale 0.8
                            
                  ,    text "mRNA"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(85, 8)
                  ]
                     |> move (-25, -25)
                     |> notifyTap MRNA
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                            |> move (45, -20)
                            |> scale 0.8
                  ,    text "DNA"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(37, -18)
                  ]
                     |> move (25, -25)
                     |> notifyTap DNA
            ]
        ThisIstheRightAnswer  ->
            [ text "This Is the Right Answer"
                  |> centered
                  |> filled black
            , group
                  [    
                        labBackground
                        |> move (0, 25)
                        ,
                        doctor 
                        |> scale 0.5
                        |> move (-60, 0)
                        ,
                        rect 240 20
                        |> filled black
                        |> move (0, 50)
                        ,
                        text "Doctor Smith: It starts with circular snippets of DNA called plasmids. These carry the genetic"
                        |> filled white
                        |> scale 0.4
                        |> move (-95, 53)
                        ,
                        text "material that codes for the notorious spike protein on the surface of SARS-CoV-2, the virus that"
                        |> filled white
                        |> scale 0.4
                        |> move (-95, 48)
                        ,
                        text "causes COVID-19. The virus uses the spike to hook onto cells so it can infiltrate them and reprod."
                        |> filled white
                        |> scale 0.4
                        |> move (-95, 43)
                        ,
                        dna
                        |> move (10 + 5*sin(model.time), -20 + 5*cos(model.time))
                        ,
                      oval 25 37.5
                            |> filled green
                            |> rotate (degrees 90)
                            |> move (0, -23)
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                             |> move(0, -25)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep
            ]
        ThisIsNotTheRightAnswer  ->
            [ text "This Is Not The Right Answer"
                  |> centered
                  |> filled black
            , group
                  [    
                        labBackground
                        |> move (0, 25)
                        ,
                        doctor 
                        |> scale 0.5
                        |> move (-60, 0)
                        ,
                        rect 200 20
                        |> filled black
                        |> move (0, 50)
                        ,
                        text "Doctor Smith: Uh OH.... Looks like that's not quite right. mRNA is the second ingredient added to"
                        |> filled white
                        |> scale 0.4
                        |> move (-95, 53)
                        ,
                        text "the vaccine. mRNA is a single messenger ribonucleic acid is a single-stranded molecule of RNA that"
                        |> filled white
                        |> scale 0.4
                        |> move (-95, 48)
                        ,
                        text "corresponds to the genetic sequence of a gene. Maybe try DNA?"
                        |> filled white
                        |> scale 0.4
                        |> move (-95, 43)
                        ,
                        mRNA
                        |> move (10 + 5*sin(model.time), 25 + 5*cos(model.time))
                        ,
                       oval 25 37.5
                            |> filled green
                            |> rotate (degrees 90)
                            |> move (0, -23)
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -25)
                  ]
                     |> move (0, -25)
                     |> notifyTap Goback
            ]
        Scene4  ->
            [ text "Scene 4"
                  |> centered
                  |> filled black
            , group
                  [   labBackground
                      |> move (25, 25)
                      ,
                      text "Congratulations!"
                      |> filled black
                      |> scale 0.7
                      |> move (0,70)
                      ,
                      text "You completed the first ingredient to the Coronavirus Vaccine!"
                      |> filled black
                      |> scale 0.6
                      |> move (-65, 60)
                      ,
                      text "Next question:"
                      |> filled black
                      |> scale 0.6
                      |> move (-50,50)
                      ,
                      text "What does mRNA do to your body?"
                      |> filled black
                      |> scale 0.6
                      |> move (-5,50)
                      ,
                      doctor
                      |> scale 0.5
                      |> move (-40,0)
                      ,
                      partyHat model
                      |> scale 0.1
                      |> move (-35,46)
                      |> rotate (degrees 20)
                      ,
                      rect 5 2
                      |> filled yellow
                      |> move (-20,70)
                      ,
                      rect 5 2
                      |> filled red
                      |> rotate (degrees 30)
                      |> move (-30,70)
                      ,
                      rect 5 2
                      |> filled pink
                      |> rotate (degrees 40)
                      |> move (-30,40)
                      ,
                       rect 5 2
                      |> filled blue
                      |> rotate (degrees 40)
                      |> move (40,40)
                      ,
                      rect 5 2
                      |> filled green
                      |> rotate (degrees 300)
                      |> move (60,70)
                      ,
                      rect 5 2
                      |> filled yellow
                      |> move (70,30)
                      ,
                      rect 5 2
                      |> filled orange
                      |> rotate (degrees 150)
                      |> move (40, 65)
                      ,
                       pacMan model 
                      |> move (60*sin(1*model.time) , 0)
                      |> scale 0.4
                      |> move (60,30)
                      ,
                       roundedRect 143 10 5
                            |> filled purple
                            |> move (25, 0)
                  ,    text "It tells Ribosome to create proteins called antibodies which fights off virus and doesnt change anything in your body"
                            |> centered
                            |> size 3
                            |> filled white
                            |> move(25, 0)
                  ]
                     |> move (-25, -25)
                     |> notifyTap Antibodies
            , group
                  [
                       roundedRect 143 10 5
                            |> filled orange
                            |> move (-25, -15)
                  ,    text "It changes your DNA to fight against COVID-19 virus, which causes you to have abnormalities"
                            |> centered
                            |> size 3.5
                            |> filled black
                            |> move(-25, -16)
                  ]
                     |> move (25, -25)
                     |> notifyTap ChangesDNA
            ]
        Correct  ->
            [ text "Correct"
                  |> centered
                  |> filled black
            , group
                  [ labBackground
                    |> move (0, 25)
                    ,
                    pacMan model 
                    |> move (60*sin(1*model.time) , 0)
                    |> scale 0.4
                    |> move (60,-10)
                    ,
                    rect 85 20
                    |> filled black
                    |> move (2,50)
                    ,
                    rect 5 2
                    |> filled pink
                    |> rotate (degrees 40)
                    |> move (-30,40)
                    ,
                    rect 160 33
                    |> filled white
                    |> move (5, 23)

                    ,
                    text "Correct Answer!"
                    |> filled white
                    |> move (-38,46)
                    ,
                    text "After the DNA is added, an enzyme called RNA Polymerase copies DNA"
                    |> filled black 
                    |> scale 0.4
                    |> move (-70,34)
                    ,
                    text "and that copy is called mRNA and this is what makes the vaccine unique!"
                    |> filled black
                    |> scale 0.4
                    |> move (-70,28)
                    ,
                    text "In a cell, RNA acts like a ‘messenger’ carrying the instruction of the DNA"
                    |> filled black 
                    |> scale 0.4
                    |> move (-70, 22)
                    ,
                    text "and it's job to deliver the message to Ribosome. In this case the Ribosome"
                    |> filled black
                    |> scale 0.4
                    |> move (-70, 16)
                    ,
                    text "creates antibodies and white blood cells to fight off and remember the virus."
                    |> filled black
                    |> scale 0.4
                    |> move (-70, 10)
                    ,
                    doctor
                    |> scale 0.5
                    |> move (-80,-10)
                    ,
                    rect 5 2
                    |> filled yellow
                    |> move (0,60)
                    ,
                    rect 5 2
                    |> filled red
                    |> rotate (degrees 30)
                    |> move (-35,58)

                    ,
                     rect 5 2
                    |> filled blue
                    |> rotate (degrees 40)
                    |> move (40,55)
                    ,
                    rect 5 2
                    |> filled green
                    |> rotate (degrees 300)
                    |> move (45,50)
                    ,
                    rect 5 2
                    |> filled darkGreen
                    |> move (15,40)
                    ,
                    rect 5 2
                    |> filled orange
                    |> rotate (degrees 150)
                    |> move (25,55)
                    ,
                    text "Good job"
                    |> filled black
                    |> move (-20,-60)
                    ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (0, -20)
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -23)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep2
            ]
        Wrong  ->
            [ text "Wrong"
                  |> centered
                  |> filled black
            , group
                  [    labBackground
                        ,
                        pacMan model 
                        |> move (60*sin(1*model.time) , 0)
                        |> scale 0.4
                        |> move (60,0)
                        ,
                        rect 80 30
                        |> filled black
                        |> move (0,40)
                        ,
                        text "Wrong Answer!"
                        |> filled white
                        |> move (-38,35)
                        ,
                        text "X"
                        |> filled red
                        |> move (-50,35)
                        ,
                        text "X"
                        |> filled red
                        |> move (41,35)
                        ,
                        doctor
                        |> scale 0.6
                        |> move (-60,-20)
                        ,
                        text "Better luck next time!"
                        |> filled black
                        |> scale 0.6
                        |> move (-32,15)
                       ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Goback2
            ]
        Scene5  ->
            [ text "Scene 5"
                  |> centered
                  |> filled black
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Lipids"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (-50, -25)
                     |> notifyTap Lipids
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Salts"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Salts
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Sugars"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (50, -25)
                     |> notifyTap Sugars
            ]
        Correct2  ->
            [ text "Correct"
                  |> centered
                  |> filled black
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep3
            ]
        Wrong2  ->
            [ text "Wrong"
                  |> centered
                  |> filled black
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap GoBack3
            ]
        Wrong3  ->
            [ text "Wrong"
                  |> centered
                  |> filled black
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Goback4
            ]
        Scene7  ->
            [ text "Scene 6"
                  |> centered
                  |> filled black
            , group
                  [    labBackground
                       |> move (50, 25)
                        ,
                        roundedRect 100 20 5
                        |> filled white
                        |> scale 1.8
                        |> move (55, 40),

                        polygon [(40,100),(49,5),(79,101)]
                        |> filled white
                        |> scale 0.3
                        |> move (-85, 0),

                        text "Now that you know about the last step, what do you think we add next?"
                          |> filled black
                          |> scale 0.5
                          |> move (-30, 42.5),

                        text "Salts or Sugars or Water?"
                          |> filled black
                          |> scale 0.5
                          |> move (25, 33),
                        doctor
                        |> scale 0.5
                        |> move (-30, 0)
                       ,
                                             roundedRect 40 20 5
                            |> filled green
                  ,    text "Water"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (-50, -25)
                     |> notifyTap Water
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Salts"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Salts2
            , group
                  [    
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Sugars"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (50, -25)
                     |> notifyTap Sugars2
            ]
        Wrong4  ->
            [ text "Wrong"
                  |> centered
                  |> filled black
            , group
                  [    labBackground
                       |> move (0, 25)
                       ,
                       roundedRect 100 20 5
                        |> filled white
                        |> scale 1.8
                        |> move (0, 40),

                        polygon [(40,100),(49,5),(79,101)]
                        |> filled white
                        |> scale 0.3
                        |> move (-85, 0),

                        text "We don't add water to the vaccine solution now!"
                          |> filled black
                          |> scale 0.5
                          |> move (-57, 42.5),

                        text "Try again!"
                          |> filled black
                          |> scale 0.5
                          |> move (-15, 33),
                        doctor
                        |> scale 0.5
                        |> move (-65, 0)
                       ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap GoBack6
            ]
        Wrong5  ->
            [ text "Wrong"
                  |> centered
                  |> filled black
            , group
                  [ labBackground
                    |> move (0, 25)
                    ,
                  roundedRect 100 20 5
                    |> filled white
                    |> scale 1.8
                    |> move (0, 40),

                    polygon [(40,100),(49,5),(79,101)]
                    |> filled white
                    |> scale 0.3
                    |> move (-85, 0),

                    text "We don't add sugar to the vaccine solution now!"
                      |> filled black
                      |> scale 0.5
                      |> move (-57, 42.5),

                    text "Try again!"
                      |> filled black
                      |> scale 0.5
                      |> move (-15, 33),
                    doctor
                    |> scale 0.5
                    |> move (-65, 0)
                    ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap GoBack5
            ]
        Correct3  ->
            [ text "Correct"
                  |> centered
                  |> filled black
            , group
                  [   labBackground
                      |> move (0, 25)
                      ,
                  
                      roundedRect 100 20 5
                      |> filled white
                      |> scale 1.8
                      |> move (0, 40),

                      polygon [(40,100),(49,5),(79,101)]
                      |> filled white
                      |> scale 0.3
                      |> move (-85, 0),

                      text "GOODJOB! The salt does come next"
                        |> filled black
                        |> scale 0.5
                        |> move (-57, 42.5),

                      doctor
                      |> scale 0.5
                      |> move (-65, 0)
                      ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep5
            ]
        Scene6  ->
            [ text "Scene 7"
                  |> centered
                  |> filled black
            , group
                  [    labBackground
                       |> move (0, 25)
                      ,
                      pacman model
                      |> scale 0.5
                      |> move (-70, 25 + 45*sin(2*model.time))
                      ,
                        doctor
                        |> move (75,0)
                        --right side of screen--
                        ,
                      roundedRect 10 15 5
                      |> filled black
                      |> scale 5.5
                      |> rotate (degrees -90) 
                      |> move (-10,40)
                      
                      ,
                      roundedRect 10 15 5
                      |> filled black
                      |> scale 5.5
                      |> rotate (degrees -270)
                      |> move (-10,0)
                      ,
                      text "Correct Answer! We need"
                      |> filled white
                      |> move (-80,100)
                      |> scale 0.5
                      ,
                        text "to ensure that the newly"
                      |> filled white
                      |> move (-80,90)
                      |> scale 0.5
                      ,
                          text "formed mRNA is enclosed"
                      |> filled white
                      |> move (-80,80)
                      |> scale 0.5
                      ,
                          text "into tiny balls of fat called"
                      |> filled white
                      |> move (-80,70)
                      |> scale 0.5
                      ,
                          text "liquid nanoparticles. If we"
                      |> filled white
                      |> move (-80,60)
                      |> scale 0.5
                      ,
                          text "didn't do this, the mRNA"
                      |> filled white
                      |> move (-80,50)
                      |> scale 0.5
                      
                      ,
                          text "would dissolve before"
                      |> filled white
                      |> move (-80,40)
                      |> scale 0.5
                      ,
                          text "it could get to your cells."
                      |> filled white
                      |> move (-80,30)
                      |> scale 0.5
                      ,
                          text "to do this, the lipids are"
                      |> filled white
                      |> move (-80,20)
                      |> scale 0.5
                      ,
                          text "diluted with ethanol and"
                      |> filled white
                      |> move (-80,10)
                      |> scale 0.5
                      ,
                            text "mixed with the mRNA"
                      |> filled white
                      |> move (-80,0)
                      |> scale 0.5
                      ,
                            text "mixers. Don't worry, "
                      |> filled white
                      |> move (-80,-10)
                      |> scale 0.5
                      ,
                            text "Messenger RNA vaccines"
                      |> filled white
                      |> move (-80,-20)
                      |> scale 0.5
                      ,
                            text "are perfectly safe!"
                      |> filled white
                      |> move (-80,-30)
                      |> scale 0.5
                      ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (60, 70)
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(60, 67)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep4
            ]
        Scene8  ->
            [ text "Scene 8"
                  |> centered
                  |> filled black
            , group
                  [    labBackground
                       |> move (0, 25)
                       ,


                        roundedRect 100 20 5
                        |> filled white
                        |> scale 1.8
                        |> move (0, 40),

                        polygon [(40,100),(49,5),(79,101)]
                        |> filled white
                        |> scale 0.3
                        |> move (-85, 0),

                        text "You're doing really awesome!"
                          |> filled black
                          |> scale 0.5
                          |> move (-40, 43),

                        text "When we add the salts they help balance the acidity in your body."
                          |> filled black
                          |> scale 0.5
                          |> move (-80, 32),

                        doctor
                        |> scale 0.5
                        |> move (-65, 0)
                        ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep6
            ]
        Scene9  ->
            [ text "Scene 9"
                  |> centered
                  |> filled black
            , group
                  [    scene9
                       |> scale 0.9
                       |> move (20, 10)
                       ,
                       sugarCrystal
                       |> move (-15,-5)
                  ,    text "Sugar"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(10, -3)
                  ]
                     |> move (-25, -25)
                     |> notifyTap Sugars3
            , group
                  [
                       waterDrop
                       |> move (25,0)
                  ,    text "Water"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (25, -25)
                     |> notifyTap Water2
            ]
        Wrong6  ->
            [ text "Wrong"
                  |> centered
                  |> filled black
            , group
                  [
                       wrongAnswer
                       |> scale 0.9
                       |> move (0, 10)
                       ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap GoBack7
            ]
        Correct4  ->
            [ text "Correct"
                  |> centered
                  |> filled black
            , group
                  [
                       correctAnswer
                       |> scale 0.9
                       |> move (0, 10)
                       ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep7
            ]
        Scene10  ->
            [ text "Scene 10"
                  |> centered
                  |> filled black
            , group
                  [
                       scene10
                       |> scale 0.9
                       |> move (0, 10)
                       ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep8
            ]
        Scene11  ->
            [ text "Scene 11"
                  |> centered
                  |> filled black
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Nextstep8
            ]
        WhatisPhase1  ->
            [ text "Phase 1, small groups of people receive the trial vaccine."
                  |> size 8
                  |> filled black
                  |> move (-90,15)
            , group
                  [
                       phase1
                       |> scale 0.7
                       ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (-60,20)
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move (-60,17)
                  ]
                     |> move (0, -25)
                     |> notifyTap GoBack8
            ]
        WhatisPhase2  ->
            [ text "Phase 2, the clinical study is expanded and vaccine is"
                  |> size 7
                  |> filled black
                  |> move (-90,20)
                  ,
                  text "given to people who have characteristics (such as age and physical health)"
                  |> size 7
                  |> filled black
                  |> move (-90,15)
            , group
                  [
                       phase2
                       |> scale 0.7
                       ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (-60,20)
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move (-60,17)
                  ]
                     |> move (0, -25)
                     |> notifyTap GoBack9
            ]
        WhatisPhase3  ->
            [ text "What is Phase III"
                  |> centered
                  |> filled black
            , group
                  [     brickwall
                        |> scale 2
                        ,
                        doctor
                        |> scale 2
                        |> move (70,-70)
                        ,
                        myStr1
                        |> move (23, 20)
                        ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (-51, 35)
                  ,    text "Go Back"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(-51, 32)
                  ]
                     |> move (-25, -25)
                     |> notifyTap GoBack10
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                            |> move (-52, 35)
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(-52, 32)
                  ]
                     |> move (25, -25)
                     |> notifyTap NextStep9
            ]
        Scene12  ->
            [ text "Scene 12"
                  |> centered
                  |> filled black
            , group
                  [    rect 30 5
                        |> filled (rgb 194 222 236)
                        |> scale 100
                        |> makeTransparent 1,




                        curve (-95.84,-46.43) [Pull (0,-46.43) (95.843,-46.43),Pull (95.843,-55.05) (95.843,-63.68),Pull (0,-63.68) (-95.84,-63.68),Pull (-95.84,-54.58) (-95.84,-46.43)]  
                        |> filled (rgb 101 127 150)
                        |> move (0, -0.5)
                        |> makeTransparent 1,

                        curve (-95.84,-43.92) [Pull (0,-44.07) (95.843,-44.23),Pull (96,-47.05) (96.156,-49.88),Pull (0.1568,-49.72) (-95.84,-49.56),Pull (-95.84,-46.74) (-95.84,-43.92)] 
                        |> filled (rgb 61 98 124)
                        |> makeTransparent 1,


                        curve (72.627,-9.098) [Pull (83.450,-8.941) (94.274,-8.784),Pull (95.281,-8.894) (95.529,-9.725),Pull (95.529,-29.96) (95.529,-50.19),Pull (95.578,-52.00) (94.588,-51.76),Pull (83.450,-51.76) (72.313,-51.76),Pull (71.403,-51.59) (71.372,-51.13),Pull (71.372,-30.58) (71.372,-10.03),Pull (71.400,-8.968) (72.627,-9.098)]
                        |> filled white
                        |> makeTransparent 1,
                        curve (79.843,-8.784) [Pull (78.745,-8.784) (77.647,-8.784),Pull (78.431,-7.686) (79.215,-6.588),Pull (79.840,-7.401) (80.784,-7.215),Pull (80.470,-8) (79.843,-8.784)]
                        |> filled (rgb 151 176 181)
                        |> makeTransparent 1,
                        curve (89.254,-8.784) [Pull (88.470,-7.686) (87.686,-6.588),Pull (87.025,-7.141) (85.803,-7.215),Pull (86.274,-8) (86.745,-8.784),Pull (88,-8.784) (89.254,-8.784)]
                        |> filled (rgb 151 176 181)
                        |> makeTransparent 1,
                        circle 7
                        |> filled (rgb 151 176 181)
                        |> makeTransparent 1
                        |> move (83.5, -1),
                        circle 5.9
                        |> outlined (solid 0.35) (rgb 175 201 202)
                        |> makeTransparent 1
                        |> move (83.5 , -1),
                        circle 5
                        |> filled white
                        |> makeTransparent 1
                        |> move (83.5, -1),
                        circle 4
                        |> filled (rgb 133 183 206)
                        |> makeTransparent 1
                        |> move (83.5, -1),
                        curve (82.980,2.1960) [Pull (81.568,0) (80.156,-2.196),Pull (79.893,-2.789) (80.470,-2.823),Pull (83.137,-2.823) (85.803,-2.823),Pull (86.618,-2.837) (86.512,-2.251),Pull (85.226,0) (83.939,2.2512),Pull (83.296,3.0312) (82.980,2.1960)]
                        |> filled (rgb 254 204 2)
                        |> makeTransparent 1
                        |> scale 0.9
                        |> move (8.5, -0.5),
                        circle 1.7
                        |> outlined (solid 0.2) (rgb 104 124 135)
                        |> makeTransparent 1
                        |> move (83.6 , -0.9),
                        polygon [(42,20),(-42,22),(-24,-23),(23,-24)]
                        |> filled (rgb 104 124 135)
                        |> scale 0.015
                        |> move (83.6, 0)
                        |> makeTransparent 1,
                        polygon [(-12,-28),(-36,23),(-87,21),(-48,-63)]
                        |> filled (rgb 104 124 135)
                        |> scale 0.0145
                        |> move (83.3, -1)
                        |> makeTransparent 1,
                        polygon [(-53,-28),(-36,23),(22,21),(-10,-67)]
                        |> filled (rgb 104 124 135)
                        |> scale 0.013
                        |> rotate -0.3
                        |> move (84.7, -1.2)
                        |> makeTransparent 1,
                        circle 0.45
                        |> filled (rgb 104 124 135)
                        |> makeTransparent 1
                        |> move (83.6 , -0.9),
                        curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
                        |> filled (rgb 124 125 127)
                        |> makeTransparent 1,
                        curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
                        |> filled (rgb 124 125 127)
                        |> makeTransparent 1
                        |> move (0, -1),
                        curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
                        |> filled (rgb 124 125 127)
                        |> makeTransparent 1
                        |> move (0, -2),
                        curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
                        |> filled (rgb 124 125 127)
                        |> makeTransparent 1
                        |> move (11, 0),
                        curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
                        |> filled (rgb 124 125 127)
                        |> makeTransparent 1
                        |> move (11, -1),
                        curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
                        |> filled (rgb 124 125 127)
                        |> makeTransparent 1
                        |> move (11, -2),
                        curve (72.627,-10.35) [Pull (72.627,-28.39) (72.627,-46.43),Pull (83.450,-28.39) (94.274,-10.35),Pull (83.450,-10.35) (72.627,-10.35)]  
                        |> filled (rgb 203 231 237)
                        |> makeTransparent 1,
                        curve (94.274,-10.35) [Pull (94.274,-28.39) (94.274,-46.43),Pull (83.450,-46.43) (72.627,-46.43),Pull (83.450,-28.39) (94.274,-10.35)]
                        |> filled (rgb 184 217 224)
                        |> makeTransparent 1,
                        curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
                        |> outlined (solid 0.8) white
                        |> move (0, 0.5)
                        |> makeTransparent 1,
                        curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
                        |> outlined (solid 0.8) white
                        |> move (0, -8)
                        |> makeTransparent 1,
                        curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
                        |> outlined (solid 0.8) white
                        |> move (0, -16)
                        |> makeTransparent 1,
                        curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
                        |> outlined (solid 0.8) white
                        |> move (0, -24.5)
                        |> makeTransparent 1,
                        curve (78.588,-16.31) [Pull (78.745,-17.09) (78.901,-17.88),Pull (77.176,-18.64) (75.450,-17.88),Pull (75.764,-16.94) (76.078,-16),Pull (77.333,-16.15) (78.588,-16.31)]
                        |> filled (rgb 122 186 209)
                        |> makeTransparent 1,
                        curve (76.705,-12.86) [Pull (76.705,-13.49) (76.705,-14.11),Pull (75.921,-16) (75.137,-17.88),Pull (77.176,-18.79) (79.215,-18.19),Pull (78.745,-16.15) (78.274,-14.11),Pull (78.274,-13.49) (78.274,-12.86)]
                        |> outlined (solid 0.3) white
                        |> makeTransparent 1,
                        roundedRect 30 5 5
                        |> filled white
                        |> scale 0.063
                        |> move (77.5, -12.7),
                        curve (87.686,-41.41) [Pull (89.568,-41.41) (91.450,-41.41),Pull (91.450,-42.35) (91.450,-43.29),Pull (89.411,-43.13) (87.372,-42.98),Pull (87.529,-42.19) (87.686,-41.41)]  
                        |> filled (rgb 122 186 209)
                        |> makeTransparent 1,
                        ---
                        curve (87.686,-39.52) [Pull (87.686,-41.41) (87.686,-43.29),Pull (89.725,-43.29) (91.764,-43.29),Pull (91.607,-41.41) (91.450,-39.52)]
                        |> outlined (solid 0.3) white
                        |> makeTransparent 1,
                        curve (87.372,-39.21) [Pull (89.568,-39.21) (91.764,-39.21)]
                        |> outlined (solid 0.5) white
                        |> makeTransparent 1,
                        curve (85.176,-30.74) [Pull (85.176,-32.78) (85.176,-34.82)]
                        |> outlined (solid 0.5) white
                        |> makeTransparent 1,
                        curve (91.450,-30.74) [Pull (91.450,-32.94) (91.450,-35.13)]
                        |> outlined (solid 0.5) white
                        |> makeTransparent 1,
                        curve (86.117,-33.25) [Pull (86.588,-33.25) (87.058,-33.25),Pull (87.058,-33.88) (87.058,-34.50),Pull (86.588,-34.50) (86.117,-34.50),Pull (86.117,-33.88) (86.117,-33.25)]
                        |> filled (rgb 122 186 209)
                        |> move (0, -0.5)
                        |> makeTransparent 1,
                        curve (88,-32.94) [Pull (88.313,-32.94) (88.627,-32.94),Pull (88.627,-33.88) (88.627,-34.82),Pull (88.313,-34.82) (88,-34.82),Pull (87.843,-33.88) (88,-32.94),Pull (2.1960,-32.62) (-83.60,-32.31)]
                        |> filled (rgb 122 186 209)
                        |> move (0.1, 0)
                        |> makeTransparent 1,
                        curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
                        |> outlined (solid 0.25) white
                        |> makeTransparent 1,
                        curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
                        |> outlined (solid 0.25) white
                        |> move (1.8, 0)
                        |> makeTransparent 1,
                        curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
                        |> outlined (solid 0.25) white
                        |> move (3.6, 0)
                        |> makeTransparent 1,
                        curve (85.176,-31.68) [Pull (88.313,-31.68) (91.450,-31.68)]
                        |> outlined (solid 0.3) white
                        |> makeTransparent 1,

                        curve (69.176,-51.45) [Pull (69.333,-42.50) (69.490,-33.56),Pull (19.764,-33.41) (-29.96,-33.25),Pull (-29.96,-42.35) (-29.96,-51.45),Pull (19.607,-51.29) (69.176,-51.45)]
                        |> filled (rgb 99 152 209)
                        |> makeTransparent 1,


                        curve (69.490,-33.56) [Pull (69.490,-32.31) (69.490,-31.05),Pull (19.764,-31.05) (-29.96,-31.05),Pull (-29.96,-32.31) (-29.96,-33.56),Pull (19.764,-33.56) (69.490,-33.56)]  
                        |> filled (rgb 77 129 170)
                        |> makeTransparent 1,


                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> makeTransparent 1,
                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (9, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (2.8, 0)
                        |> makeTransparent 1,

                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-31.3, 0)
                        |> makeTransparent 1,
                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-22.3, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (-31.3, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (-28.5, 0)
                        |> makeTransparent 1,


                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-49, 0)
                        |> makeTransparent 1,
                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-40, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (-49, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (-46.2, 0)
                        |> makeTransparent 1,

                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-80.3, 0)
                        |> makeTransparent 1,
                        curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-71.3, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (-80.3, 0)
                        |> makeTransparent 1,
                        curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
                        |> filled (rgb 36 103 156)
                        |> move (-77.5, 0)
                        |> makeTransparent 1,



                        curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> makeTransparent 1,
                        curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
                        |> filled (rgb 36 103 156)
                        |> makeTransparent 1,  
                        curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> makeTransparent 1
                        |> move (0, -5.5),
                        curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
                        |> filled (rgb 36 103 156)
                        |> move (0, -5.5)
                        |> makeTransparent 1,  
                        curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (0, -11)
                        |> makeTransparent 1,
                        curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
                        |> filled (rgb 36 103 156)
                        |> move (0, -11)
                        |> makeTransparent 1,

                        curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-49, 0)
                        |> makeTransparent 1,
                        curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
                        |> filled (rgb 36 103 156)
                        |> move (-49, 0)
                        |> makeTransparent 1,  
                        curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> makeTransparent 1
                        |> move (-49, -5.5),
                        curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
                        |> filled (rgb 36 103 156)
                        |> move (-49, -5.5)
                        |> makeTransparent 1,  
                        curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
                        |> filled (rgb 168 225 232)
                        |> move (-49, -11)
                        |> makeTransparent 1,
                        curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
                        |> filled (rgb 36 103 156)
                        |> move (-49, -11)
                        |> makeTransparent 1,



                        curve (50.352,-16.31) [Pull (50.352,-17.41) (50.352,-18.50),Pull (59.764,-18.50) (69.176,-18.50),Pull (69.176,-17.41) (69.176,-16.31),Pull (59.764,-16.31) (50.352,-16.31)]
                        |> filled (rgb 76 129 171)
                        |> makeTransparent 1,


                        curve (85.176,-30.74) [Pull (85.176,-32.78) (85.176,-34.82)]
                        |> outlined (solid 0.5) white
                        |> move (-60, 3.7)
                        |> makeTransparent 1,
                        curve (91.450,-30.74) [Pull (91.450,-32.94) (91.450,-35.13)]
                        |> outlined (solid 0.5) white
                        |> move (-60, 3.7)
                        |> makeTransparent 1,
                        curve (86.117,-33.25) [Pull (86.588,-33.25) (87.058,-33.25),Pull (87.058,-33.88) (87.058,-34.50),Pull (86.588,-34.50) (86.117,-34.50),Pull (86.117,-33.88) (86.117,-33.25)]
                        |> filled (rgb 122 186 209)
                        |> move (-60, 3.2)
                        |> makeTransparent 1,
                        curve (88,-32.94) [Pull (88.313,-32.94) (88.627,-32.94),Pull (88.627,-33.88) (88.627,-34.82),Pull (88.313,-34.82) (88,-34.82),Pull (87.843,-33.88) (88,-32.94),Pull (2.1960,-32.62) (-83.60,-32.31)]
                        |> filled (rgb 122 186 209)
                        |> move (-59.9, 3.7)
                        |> makeTransparent 1,


                        curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
                        |> outlined (solid 0.25) white
                        |> move (-60, 3.7)
                        |> makeTransparent 1,
                        curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
                        |> outlined (solid 0.25) white
                        |> move (-58.2, 3.7)
                        |> makeTransparent 1,
                        curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
                        |> outlined (solid 0.25) white
                        |> move (-56.4, 3.7)
                        |> makeTransparent 1,
                        curve (85.176,-31.68) [Pull (88.313,-31.68) (91.450,-31.68)]
                        |> outlined (solid 0.3) white
                        |> move (-60, 3.7)
                        |> makeTransparent 1,



                        curve (45.019,-29.49) [Pull (41.568,-29.49) (38.117,-29.49),Pull (38.117,-30.27) (38.117,-31.05),Pull (41.568,-31.05) (45.019,-31.05),Pull (45.019,-30.27) (45.019,-29.49)]  
                        |> filled (rgb 117 133 141)
                        |> move (-0.15, 0)
                        |> makeTransparent 1,

                        curve (37.490,-29.49) [Pull (41.411,-29.49) (45.333,-29.49),Pull (45.333,-29.17) (45.333,-28.86),Pull (41.411,-28.86) (37.490,-28.86),Pull (37.490,-29.17) (37.490,-29.49)]
                        |> filled (rgb 115 116 120)
                        |> makeTransparent 1,


                        curve (40.313,-28.54) [Pull (40.313,-26.35) (40.313,-24.15),Pull (39.058,-24) (37.803,-23.84),Pull (37.647,-26.19) (37.490,-28.54),Pull (38.745,-28.54) (40.313,-28.54)]
                        |> filled (rgb 117 133 141)
                        |> move (0, -0.4)
                        |> makeTransparent 1,




                        curve (42.196,-24.47) [Pull (42.196,-23.68) (42.196,-22.90),Pull (40.627,-22.90) (39.058,-22.90),Pull (39.215,-23.68) (39.372,-24.47),Pull (40.784,-24.47) (42.196,-24.47)]
                        |> filled (rgb 117 133 141)
                        |> makeTransparent 1,



                        curve (44.392,-25.09) [Pull (43.294,-25.09) (42.196,-25.09),Pull (42.196,-23.05) (42.196,-21.01),Pull (43.294,-21.01) (44.392,-21.01),Pull (44.392,-23.05) (44.392,-25.09)]
                        |> filled (rgb 157 171 178)
                        |> makeTransparent 1,


                        curve (44.078,-25.72) [Pull (43.294,-25.72) (42.509,-25.72),Pull (42.509,-25.41) (42.509,-25.09),Pull (43.294,-25.09) (44.078,-25.09),Pull (44.078,-25.41) (44.078,-25.72)]
                        |> filled (rgb 157 171 178)
                        |> makeTransparent 1,


                        curve (42.509,-26.03) [Pull (43.294,-26.03) (44.078,-26.03)]
                        |> outlined (solid 0.3) (rgb 96 120 138)
                        |> move (0, 0.25)
                        |> makeTransparent 1,


                        curve (42.823,-20.39) [Pull (43.294,-20.39) (43.764,-20.39)]
                        |> outlined (solid 0.3) (rgb 157 171 178)
                        |> move (0, -0.5)
                        |> makeTransparent 1,


                        curve (42.823,-20.70) [Pull (43.450,-20.70) (44.078,-20.70)]
                        |> outlined (solid 0.3) (rgb 96 120 138)
                        |> move (-0.15, 0.1)
                        |> makeTransparent 1,

                        circle 10
                        |> filled (rgb 91 103 109)
                        |> scale 0.14
                        |> move (39, -24)
                        |> makeTransparent 1,

                         circle 10
                        |> filled (rgb 91 103 109)
                        |> scale 0.068
                        |> move (42.2, -22.7)
                        |> makeTransparent 1,


                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> makeTransparent 1,
                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (2.6, 0)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (2.6, 0)
                        |> makeTransparent 1,
                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (5.2, 0)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (5.2, 0)
                        |> makeTransparent 1,
                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (7.8, 0)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (7.8, 0)
                        |> makeTransparent 1,



                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (0, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (0, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (2.6, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (2.6, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (5.2, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (5.2, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
                        |> filled white
                        |> move (7.8, 14.7)
                        |> makeTransparent 1,
                        curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
                        |> outlined (solid 0.5) (rgb 155 170 176)
                        |> move (7.8, 14.7)
                        |> makeTransparent 1,


                        curve (-56,-51.13) [Pull (-56,-42.66) (-56,-34.19),Pull (-72.94,-34.19) (-89.88,-34.19),Pull (-89.88,-42.66) (-89.88,-51.13),Pull (-72.94,-51.13) (-56,-51.13)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,

                        curve (-56,-51.13) [Pull (-56,-42.66) (-56,-34.19),Pull (-72.94,-34.19) (-89.88,-34.19),Pull (-89.88,-42.66) (-89.88,-51.13),Pull (-72.94,-51.13) (-56,-51.13)]
                        |> filled (rgb 204 204 204)
                        |> makeTransparent 1,




                        curve (-57.56,-35.13) [Pull (-57.56,-41.09) (-57.56,-47.05),Pull (-72.94,-47.05) (-88.31,-47.05),Pull (-88.31,-41.09) (-88.31,-35.13),Pull (-72.94,-35.13) (-57.56,-35.13)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,


                        curve (-72.62,-35.45) [Pull (-72.62,-41.09) (-72.62,-46.74)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,


                        curve (-71.37,-38.58) [Pull (-71.37,-40.94) (-71.37,-43.29)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,

                        curve (-71.37,-38.58) [Pull (-71.37,-40.94) (-71.37,-43.29)]
                        |> outlined (solid 0.2) black
                        |> move (-2.5, 0)
                        |> makeTransparent 1,



                        curve (-58.19,-32) [Pull (-72.78,-32) (-87.37,-32),Pull (-88.62,-32.94) (-89.88,-33.88),Pull (-73.09,-33.88) (-56.31,-33.88),Pull (-57.25,-33.09) (-58.19,-32)]
                        |> filled white
                        |> makeTransparent 1,


                        curve (-58.19,-32) [Pull (-72.78,-32) (-87.37,-32),Pull (-88.62,-32.94) (-89.88,-33.88),Pull (-73.09,-33.88) (-56.31,-33.88),Pull (-57.25,-33.09) (-58.19,-32)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,


                        curve (-56.31,-33.88) [Pull (-55.84,-33.88) (-55.37,-33.88),Pull (-55.21,-24.62) (-55.05,-15.37),Pull (-56.78,-16.94) (-58.50,-18.50),Pull (-58.35,-25.25) (-58.19,-32),Pull (-57.25,-32.94) (-56.31,-33.88)]
                        |> filled (rgb 204 204 204)
                        |> makeTransparent 1,

                        curve (-56.31,-33.88) [Pull (-55.84,-33.88) (-55.37,-33.88),Pull (-55.21,-24.62) (-55.05,-15.37),Pull (-56.78,-16.94) (-58.50,-18.50),Pull (-58.35,-25.25) (-58.19,-32),Pull (-57.25,-32.94) (-56.31,-33.88)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,


                        curve (-89.88,-34.19) [Pull (-88.78,-33.09) (-87.68,-32),Pull (-87.68,-25.25) (-87.68,-18.50),Pull (-89.25,-17.09) (-90.82,-15.68),Pull (-90.82,-24.94) (-90.82,-34.19),Pull (-90.35,-34.19) (-89.88,-34.19)]
                        |> filled (rgb 153 153 153)
                        |> makeTransparent 1,

                        curve (-89.88,-34.19) [Pull (-88.78,-33.09) (-87.68,-32),Pull (-87.68,-25.25) (-87.68,-18.50),Pull (-89.25,-17.09) (-90.82,-15.68),Pull (-90.82,-24.94) (-90.82,-34.19),Pull (-90.35,-34.19) (-89.88,-34.19)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,


                        curve (-58.50,-18.50) [Pull (-56.78,-16.94) (-55.05,-15.37),Pull (-72.94,-15.37) (-90.82,-15.37),Pull (-89.25,-16.94) (-87.68,-18.50),Pull (-73.09,-18.50) (-58.50,-18.50)]
                        |> filled (rgb 155 155 155)
                        |> makeTransparent 1,

                        curve (-58.50,-18.50) [Pull (-56.78,-16.94) (-55.05,-15.37),Pull (-72.94,-15.37) (-90.82,-15.37),Pull (-89.25,-16.94) (-87.68,-18.50),Pull (-73.09,-18.50) (-58.50,-18.50)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,



                        curve (-91.13,-4.078) [Pull (-91.13,-9.568) (-91.13,-15.05),Pull (-73.09,-15.05) (-55.05,-15.05),Pull (-55.21,-9.568) (-55.37,-4.078),Pull (-73.25,-4.078) (-91.13,-4.078)]
                        |> filled (rgb 204 204 204)
                        |> makeTransparent 1,

                        curve (-91.13,-4.078) [Pull (-91.13,-9.568) (-91.13,-15.05),Pull (-73.09,-15.05) (-55.05,-15.05),Pull (-55.21,-9.568) (-55.37,-4.078),Pull (-73.25,-4.078) (-91.13,-4.078)]
                        |> outlined (solid 0.2) black
                        |> move (0, -0.1)
                        |> makeTransparent 1,


                        curve (-89.56,-10.03) [Pull (-89.56,-11.92) (-89.56,-13.80),Pull (-81.72,-13.80) (-73.88,-13.80),Pull (-73.88,-11.92) (-73.88,-10.03),Pull (-81.56,-10.03) (-89.56,-10.03)]
                        |> filled (rgb 82 82 82)
                        |> makeTransparent 1,

                        curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
                        |> outlined (solid 0.4) (rgb 154 154 154)
                        |> makeTransparent 1,
                        curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,

                        curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
                        |> outlined (solid 0.4) (rgb 154 154 154)
                        |> makeTransparent 1,
                        curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,

                        curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
                        |> outlined (solid 0.4) (rgb 154 154 154)
                        |> makeTransparent 1,
                        curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,



                        curve (-89.56,-10.03) [Pull (-89.56,-11.92) (-89.56,-13.80),Pull (-81.72,-13.80) (-73.88,-13.80),Pull (-73.88,-11.92) (-73.88,-10.03),Pull (-81.56,-10.03) (-89.56,-10.03)]
                        |> filled (rgb 82 82 82)
                        |> move (17, 0)
                        |> makeTransparent 1,

                        curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
                        |> outlined (solid 0.4) (rgb 154 154 154)
                        |> move (17, 0)
                        |> makeTransparent 1,
                        curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
                        |> outlined (solid 0.2) black
                        |> move (17, 0)
                        |> makeTransparent 1,

                        curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
                        |> outlined (solid 0.4) (rgb 154 154 154)
                        |> move (17, 0)
                        |> makeTransparent 1,
                        curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
                        |> outlined (solid 0.2) black
                        |> move (17, 0)
                        |> makeTransparent 1,

                        curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
                        |> outlined (solid 0.4) (rgb 154 154 154)
                        |> move (17, 0)
                        |> makeTransparent 1,
                        curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
                        |> outlined (solid 0.2) black
                        |> move (17, 0)
                        |> makeTransparent 1,



                        curve (-58.50,-25.41) [Pull (-73.09,-25.41) (-87.68,-25.41),Pull (-87.68,-21.96) (-87.68,-18.50),Pull (-73.09,-18.50) (-58.50,-18.50),Pull (-58.50,-21.96) (-58.50,-25.41)]  |> filled (rgb 204 204 204)
                        |> makeTransparent 1,


                        curve (-87.68,-25.41) [Pull (-72.94,-25.41) (-58.19,-25.41),Pull (-58.19,-26.19) (-58.19,-26.98),Pull (-72.94,-26.98) (-87.68,-26.98),Pull (-87.68,-26.19) (-87.68,-25.41)]
                        |> filled (rgb 204 204 204)
                        |> makeTransparent 1,



                        curve (-58.50,-26.98) [Pull (-73.09,-26.98) (-87.68,-26.98),Pull (-87.68,-29.49) (-87.68,-32),Pull (-72.94,-32) (-58.19,-32),Pull (-58.35,-29.33) (-58.50,-26.98)]
                        |> filled (rgb 152 152 152)
                        |> makeTransparent 1,

                        curve (-87.68,-25.41) [Pull (-72.94,-25.41) (-58.19,-25.41),Pull (-58.19,-26.19) (-58.19,-26.98),Pull (-72.94,-26.98) (-87.68,-26.98),Pull (-87.68,-26.19) (-87.68,-25.41)]
                        |> outlined (solid 0.2) black
                        |> makeTransparent 1,



                        curve (-48.78,-40.47) [Pull (-48.51,-39.99) (-47.52,-40.15),Pull (-44.39,-40) (-41.25,-39.84),Pull (-40.54,-39.99) (-40.31,-40.47),Pull (-40.31,-40.78) (-40.31,-41.09),Pull (-40.90,-41.37) (-41.25,-41.41),Pull (-44.70,-41.41) (-48.15,-41.41),Pull (-48.76,-41.37) (-49.09,-41.09),Pull (-48.94,-40.62) (-48.78,-40.47)]
                        |> filled (rgb 58 66 87)
                        |> makeTransparent 1,

                        curve (-48.15,-49.25) [Pull (-48.18,-50.12) (-47.21,-50.19),Pull (-44.54,-50.35) (-41.88,-50.50),Pull (-40.91,-50.45) (-40.94,-49.56),Pull (-40.62,-45.64) (-40.31,-41.72),Pull (-44.70,-41.72) (-49.09,-41.72),Pull (-48.62,-45.49) (-48.15,-49.25)]
                        |> filled (rgb 45 61 118)
                        |> makeTransparent 1,


                        curve (-48.78,-40.47) [Pull (-48.51,-39.99) (-47.52,-40.15),Pull (-44.39,-40) (-41.25,-39.84),Pull (-40.54,-39.99) (-40.31,-40.47),Pull (-40.31,-40.78) (-40.31,-41.09),Pull (-40.90,-41.37) (-41.25,-41.41),Pull (-44.70,-41.41) (-48.15,-41.41),Pull (-48.76,-41.37) (-49.09,-41.09),Pull (-48.94,-40.62) (-48.78,-40.47)]
                        |> outlined (solid 0.9) (rgb 45 56 126)
                        |> makeTransparent 1,


                        roundedRect 100 20 5
                        |> filled white
                        |> scale 1.8
                        |> move (0, 40),

                        polygon [(40,100),(49,5),(79,101)]
                        |> filled white
                        |> scale 0.3
                        |> move (-85, 0),

                        text "Congrats! We have now built our vaccine!"
                          |> filled black
                          |> scale 0.5
                          |> move (-50, 45.5),

                        text "However, we need to make sure it is safe first before we mass distribute"
                          |> filled black
                          |> scale 0.5
                          |> move (-86, 38), 

                        text "it. In order to do so, we must run the vaccine through 3 phases."
                          |> filled black
                          |> scale 0.5
                          |> move (-76, 30),

                        doctor
                        |> scale 0.5
                        |> move (-65, -30)
                  ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Phase I"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (-50, -25)
                     |> notifyTap Phase1
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Phase II"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Phase2
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Phase III"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (50, -25)
                     |> notifyTap Phase3
            ]
        Scene13  ->
            [ text "Scene 13"
                  |> centered
                  |> filled black
            , group
                  [    labBackground
                      ,
                      rect 160 25
                      |> filled white
                      |> move (10,35)
                      ,
                      doctor
                      |> move (-80,-20)
                      |> scale 0.7
                      ,
                      text "Congratulations!"
                      |> filled black
                      |> scale 1
                      |> move (-40,50)
                      ,
                       rect 5 2
                      |> filled yellow
                      |> move (-20,60)
                      ,
                      rect 5 2
                      |> filled red
                      |> rotate (degrees 30)
                      |> move (-40,60)
                      ,
                      rect 5 2
                      |> filled pink
                      |> rotate (degrees 40)
                      |> move (-40,48)
                      ,
                       rect 5 2
                      |> filled blue
                      |> rotate (degrees 40)
                      |> move (40,48)
                      ,
                      rect 5 2
                      |> filled green
                      |> rotate (degrees 300)
                      |> move (20,60)
                      ,
                      rect 5 2
                      |> filled yellow
                      |> move (10,47)
                      ,
                      rect 5 2
                      |> filled orange
                      |> rotate (degrees 150)
                      |> move (40, 60)
                      ,
                      text "The vaccine has successfully went through all three phases!"
                      |> filled darkCharcoal
                      |> scale 0.5
                      |> move (-65,40)
                      ,
                      text "It is officially approved and is ready to be sent out."
                      |> filled darkCharcoal
                      |> scale 0.5
                      |> move (-55,33)
                      ,
                      text "Now, you need a dose too I believe!"
                      |> filled darkCharcoal
                      |> scale 0.5
                      |> move (-45,28)
                      ,
                      rect 110 20
                      |> filled white
                      |> move (15,-48)
                      ,
                      text "Yay! the vaccine is ready!"
                      |> filled (rgb 71 89 72)
                      |> scale 0.8
                      |> move (-35,-50)
                      ,
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap NextStep10
            ]
        Scene14  ->
            [ text "Scene 14"
                  |> centered
                  |> filled black
            , group
                  [
                       roundedRect 40 20 5
                            |> filled green
                  ,    text "Next Step"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(0, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap Nextstep11
            ]
        Scene15  ->
            [ text "Scene 15"
                  |> centered
                  |> filled black
            , group
                  [    hospitalBackground
                       ,
                       ballons
                       ,
                       ballons
                       |> move (125,0)
                       ,
                       doctor
                       |> scale 0.8
                       |> move (-30,-15)
                       ,
                       myStr
                       ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (5, 0)
                  ,    text "Play Again"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(5, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap PlayAgain
            ]
        Scene1  ->
            [ text "Scene 1"
                  |> centered
                  |> filled black
            , group
                  [    hospitalBackground
                    ,
                    doctor
                    |> move (75,20)
                    ,
                    rect 85 70
                    |> filled yellow
                    |> move (-59, 35)
                    ,
                    text "How to play the game:"
                    |> filled black
                    |> scale 0.5
                    |> move (-90,60)
                    ,
                    text "Click the button you think"
                    |> filled black
                    |> scale 0.5
                    |> move (-90,50)
                    ,
                    text "is Correct! Don't worry if you"
                    |> filled black
                    |> scale 0.5 
                    |> move (-90,40)
                    ,
                    text "the answer wrong. You can"
                    |> filled black
                    |> scale 0.5
                    |> move (-90,30)
                    ,
                    text "always go back and click the"
                    |> filled black
                    |> scale 0.5
                    |> move (-90,20)
                    ,
                    text "right answer! Enjoy!"
                    |> filled black
                    |> scale 0.5
                    |> move (-90,10)
                    ,
                       roundedRect 40 20 5
                            |> filled green
                            |> move (10, 0)
                  ,    text "Next"
                            |> centered
                            |> size 8
                            |> filled black
                            |> move(10, -3)
                  ]
                     |> move (0, -25)
                     |> notifyTap S1S2
            ]

type Msg = Tick Float GetKeyState
         | S2S3 
         | MRNA 
         | DNA 
         | Goback 
         | Transition16 
         | NextStep 
         | Antibodies 
         | ChangesDNA 
         | Goback2 
         | NextStep2 
         | Lipids 
         | Salts 
         | Sugars 
         | GoBack3 
         | Goback4 
         | Water 
         | Salts2 
         | Sugars2 
         | GoBack5 
         | GoBack6 
         | NextStep3 
         | NextStep4 
         | NextStep5 
         | NextStep6 
         | Sugars3 
         | Water2 
         | GoBack7 
         | NextStep7 
         | NextStep8 
         | Nextstep8 
         | Phase1 
         | Phase2 
         | Phase3 
         | GoBack8 
         | GoBack9 
         | GoBack10 
         | NextStep9 
         | NextStep10 
         | Nextstep11 
         | PlayAgain 
         | Start 
         | S1S2 

type State = Scene0 
           | Scene2 
           | Scene3 
           | ThisIstheRightAnswer 
           | ThisIsNotTheRightAnswer 
           | Scene4 
           | Correct 
           | Wrong 
           | Scene5 
           | Correct2 
           | Wrong2 
           | Wrong3 
           | Scene7 
           | Wrong4 
           | Wrong5 
           | Correct3 
           | Scene6 
           | Scene8 
           | Scene9 
           | Wrong6 
           | Correct4 
           | Scene10 
           | Scene11 
           | WhatisPhase1 
           | WhatisPhase2 
           | WhatisPhase3 
           | Scene12 
           | Scene13 
           | Scene14 
           | Scene15 
           | Scene1 

update msg model =
    case msg of
        Tick t _ ->
            { model | time = t }
        S2S3  ->
            case model.state of
                Scene2  ->
                    { model | state = Scene3  }

                otherwise ->
                    model
        MRNA  ->
            case model.state of
                Scene3  ->
                    { model | state = ThisIsNotTheRightAnswer  }

                otherwise ->
                    model
        DNA  ->
            case model.state of
                Scene3  ->
                    { model | state = ThisIstheRightAnswer  }

                otherwise ->
                    model
        Goback  ->
            case model.state of
                ThisIsNotTheRightAnswer  ->
                    { model | state = Scene3  }

                otherwise ->
                    model
        Transition16  ->
            case model.state of
                otherwise ->
                    model
        NextStep  ->
            case model.state of
                ThisIstheRightAnswer  ->
                    { model | state = Scene4  }

                otherwise ->
                    model
        Antibodies  ->
            case model.state of
                Scene4  ->
                    { model | state = Correct  }

                otherwise ->
                    model
        ChangesDNA  ->
            case model.state of
                Scene4  ->
                    { model | state = Wrong  }

                otherwise ->
                    model
        Goback2  ->
            case model.state of
                Wrong  ->
                    { model | state = Scene4  }

                otherwise ->
                    model
        NextStep2  ->
            case model.state of
                Correct  ->
                    { model | state = Scene5  }

                otherwise ->
                    model
        Lipids  ->
            case model.state of
                Scene5  ->
                    { model | state = Correct2  }

                otherwise ->
                    model
        Salts  ->
            case model.state of
                Scene5  ->
                    { model | state = Wrong2  }

                otherwise ->
                    model
        Sugars  ->
            case model.state of
                Scene5  ->
                    { model | state = Wrong3  }

                otherwise ->
                    model
        GoBack3  ->
            case model.state of
                Wrong2  ->
                    { model | state = Scene5  }

                otherwise ->
                    model
        Goback4  ->
            case model.state of
                Wrong3  ->
                    { model | state = Scene5  }

                otherwise ->
                    model
        Water  ->
            case model.state of
                Scene7  ->
                    { model | state = Wrong4  }

                otherwise ->
                    model
        Salts2  ->
            case model.state of
                Scene7  ->
                    { model | state = Correct3  }

                otherwise ->
                    model
        Sugars2  ->
            case model.state of
                Scene7  ->
                    { model | state = Wrong5  }

                otherwise ->
                    model
        GoBack5  ->
            case model.state of
                Wrong5  ->
                    { model | state = Scene7  }

                otherwise ->
                    model
        GoBack6  ->
            case model.state of
                Wrong4  ->
                    { model | state = Scene7  }

                otherwise ->
                    model
        NextStep3  ->
            case model.state of
                Correct2  ->
                    { model | state = Scene6  }

                otherwise ->
                    model
        NextStep4  ->
            case model.state of
                Scene6  ->
                    { model | state = Scene7  }

                otherwise ->
                    model
        NextStep5  ->
            case model.state of
                Correct3  ->
                    { model | state = Scene8  }

                otherwise ->
                    model
        NextStep6  ->
            case model.state of
                Scene8  ->
                    { model | state = Scene9  }

                otherwise ->
                    model
        Sugars3  ->
            case model.state of
                Scene9  ->
                    { model | state = Correct4  }

                otherwise ->
                    model
        Water2  ->
            case model.state of
                Scene9  ->
                    { model | state = Wrong6  }

                otherwise ->
                    model
        GoBack7  ->
            case model.state of
                Wrong6  ->
                    { model | state = Scene9  }

                otherwise ->
                    model
        NextStep7  ->
            case model.state of
                Correct4  ->
                    { model | state = Scene10  }

                otherwise ->
                    model
        NextStep8  ->
            case model.state of
                Scene10  ->
                    { model | state = Scene11  }

                otherwise ->
                    model
        Nextstep8  ->
            case model.state of
                Scene11  ->
                    { model | state = Scene12  }

                otherwise ->
                    model
        Phase1  ->
            case model.state of
                Scene12  ->
                    { model | state = WhatisPhase1  }

                otherwise ->
                    model
        Phase2  ->
            case model.state of
                Scene12  ->
                    { model | state = WhatisPhase2  }

                otherwise ->
                    model
        Phase3  ->
            case model.state of
                Scene12  ->
                    { model | state = WhatisPhase3  }

                otherwise ->
                    model
        GoBack8  ->
            case model.state of
                WhatisPhase1  ->
                    { model | state = Scene12  }

                otherwise ->
                    model
        GoBack9  ->
            case model.state of
                WhatisPhase2  ->
                    { model | state = Scene12  }

                otherwise ->
                    model
        GoBack10  ->
            case model.state of
                WhatisPhase3  ->
                    { model | state = Scene12  }

                otherwise ->
                    model
        NextStep9  ->
            case model.state of
                WhatisPhase3  ->
                    { model | state = Scene13  }

                otherwise ->
                    model
        NextStep10  ->
            case model.state of
                Scene13  ->
                    { model | state = Scene14  }

                otherwise ->
                    model
        Nextstep11  ->
            case model.state of
                Scene14  ->
                    { model | state = Scene15  }

                otherwise ->
                    model
        PlayAgain  ->
            case model.state of
                Scene15  ->
                    { model | state = Scene0  }

                otherwise ->
                    model
        Start  ->
            case model.state of
                Scene0  ->
                    { model | state = Scene1  }

                otherwise ->
                    model
        S1S2  ->
            case model.state of
                Scene1  ->
                    { model | state = Scene2  }

                otherwise ->
                    model

type alias Model =
    { time : Float
    , state : State
    }

type alias Point = (Float, Float)

init : Model
init = { time = 0 
       , state = Scene0 
       }

doctor = group
  [
    curve (-19.10,-14.96) [Pull (-17.67,-31.58) (-16.24,-48.20),Pull (-12.40,-47.98) (-8.573,-47.75),Pull (-8.423,-37.75) (-8.272,-27.75),Pull (-7.670,-37.60) (-7.069,-47.45),Pull (-3.685,-47.90) (-0.300,-48.35),Pull (1.3537,-31.43) (3.0082,-14.51),Pull (-7.995,-17.25) (-19.10,-14.96)]
    |> filled green |> addOutline (solid 0.5) black
    ,
    curve (-22.37,-13.73) [Pull (-7.477,-17.58) (5.4161,-13.26),Pull (7.0286,-4.899) (6.2011,9.0269),Pull (10.442,-0.474) (12.323,-13.73),Pull (19.067,-15.37) (20.330,-11.69),Pull (20.318,8.4632) (9.0269,19.702),Pull (4.9467,22.155) (0.7064,22.528),Pull (-8.784,18.842) (-14.83,23.156),Pull (-17.97,21.586) (-21.11,20.016),Pull (-23.48,13.791) (-28.33,12.166),Pull (-30.53,14.488) (-31.00,20.330),Pull (-35.00,19.309) (-39.01,18.289),Pull (-38.71,6.5209) (-32.57,0.3924),Pull (-25.53,-0.639) (-22.21,3.6892),Pull (-23.23,-6.854) (-22.37,-13.73)]
    |> filled green |> addOutline (solid 0.5) black
    ,
    curve (-7.928,-48.11) [Pull (-20.04,-48.40) (-26.60,-51.88),Pull (-28.28,-55.84) (-27.55,-58.32),Pull (-16.29,-60.51) (-7.928,-56.90),Pull (-7.928,-52.90) (-7.928,-48.11)]
    |> filled brown |> addOutline (solid 0.5) black
    ,
    curve (-7.614,-47.80) [Pull (2.3699,-48.52) (10.753,-51.41),Pull (12.743,-55.26) (11.852,-58.16),Pull (0.2193,-60.47) (-7.614,-56.75),Pull (-7.614,-52.59) (-7.614,-47.80)]
    |> filled brown |> addOutline (solid 0.5) black
    ,
    curve (20.801,-11.85) [Pull (18.581,-15.27) (12.480,-13.89),Pull (8.6188,-15.99) (10.596,-17.97),Pull (16.946,-17.23) (13.736,-24.41),Pull (15.723,-25.59) (17.190,-24.41),Pull (18.241,-23.56) (18.132,-22.68),Pull (21.114,-26.28) (22.057,-21.11),Pull (24.696,-23.04) (24.255,-19.85),Pull (24.185,-15.75) (20.801,-11.85)]
    |> filled lightOrange |> addOutline (solid 0.5) black
    ,
    curve (11.224,-18.13) [Pull (9.8119,-18.99) (8.3990,-19.85),Pull (8.4164,-24.08) (10.753,-25.04),Pull (12.088,-24.01) (13.422,-22.99),Pull (17.700,-17.84) (11.224,-18.13)]
    |> filled gray |> addOutline (solid 1) black
    ,
    curve (-31.31,21.115) [Pull (-30.26,27.606) (-33.04,30.377),Pull (-36.04,31.015) (-35.40,28.493),Pull (-32.52,24.977) (-36.97,25.982),Pull (-38.54,26.766) (-40.11,27.551),Pull (-37.34,34.247) (-43.09,28.022),Pull (-43.10,26.143) (-42.30,25.825),Pull (-43.45,24.452) (-41.99,22.999),Pull (-39.87,22.057) (-37.75,21.115),Pull (-34.91,22.162) (-38.07,24.569),Pull (-39.95,25.600) (-41.83,25.511),Pull (-42.15,25.197) (-42.46,24.883),Pull (-42.30,23.784) (-42.15,22.685),Pull (-44.38,21.670) (-41.21,20.016),Pull (-40.11,19.388) (-39.01,18.760),Pull (-36.04,19.476) (-38.07,21.272),Pull (-35.98,19.513) (-38.38,19.074),Pull (-35.16,19.859) (-31.31,21.115)]
    |> filled lightOrange |> addOutline (solid 0.5) black
    ,
    curve (7.0693,30.007) [Pull (3.6104,22.220) (-6.768,21.433),Pull (-18.50,21.860) (-22.56,30.007),Pull (-25.08,30.666) (-25.72,33.165),Pull (-25.74,35.935) (-23.61,36.625),Pull (-23.48,40.623) (-21.35,42.942),Pull (-20.23,43.544) (-19.10,44.145),Pull (-15.47,47.422) (-9.325,45.499),Pull (-7.445,45.349) (-5.565,45.198),Pull (-0.332,47.621) (4.0611,43.844),Pull (5.1891,43.544) (6.3172,43.243),Pull (8.1245,40.470) (7.9717,37.377),Pull (10.484,35.316) (10.077,33.015),Pull (9.6438,30.756) (7.0693,30.007)]
    |> filled lightOrange |> addOutline (solid 0.5) black
    ,
    curve (-37.07,31.059) [Pull (-37.45,30.383) (-37.82,29.706),Pull (-37.07,29.254) (-36.32,28.803),Pull (-35.19,30.383) (-34.06,31.962),Pull (-34.89,32.413) (-35.72,32.864),Pull (-36.17,32.338) (-36.62,31.811),Pull (-37.60,32.488) (-38.58,33.165),Pull (-38.35,33.842) (-38.12,34.519),Pull (-43.92,38.129) (-49.71,41.739),Pull (-50.16,41.287) (-50.61,40.836),Pull (-52.94,41.739) (-55.27,42.641),Pull (-53.32,41.287) (-51.36,39.934),Pull (-51.66,39.031) (-51.96,38.129),Pull (-46.32,34.669) (-40.68,31.210),Pull (-40.23,31.811) (-39.78,32.413),Pull (-38.80,32.037) (-37.07,31.059)]
    |> filled gray |> addOutline (solid 0.4) black
    ,
    curve (2.4065,29.706) [Pull (-1.576,25.846) (-7.520,25.945),Pull (-12.40,25.874) (-17.29,28.202),Pull (-12.48,25.128) (-7.670,25.494),Pull (-0.813,25.219) (2.4065,29.706)]
    |> outlined (solid 0.3) black
    ,
    curve (-5.189,32.112) [Pull (-7.971,30.712) (-10.75,32.112)]
    |> outlined (solid 0.5) black
    ,
    curve (-1.000,23.749) [Pull (0.6190,19.677) (-1.000,17.926),Pull (-1.000,13.103) (-1.000,8.2805),Pull (-7.625,4.0805) (-14.65,8.2805),Pull (-14.65,12.921) (-14.65,17.562),Pull (-16.69,19.524) (-14.65,23.567),Pull (-13.92,23.476) (-13.19,23.385),Pull (-12.52,20.564) (-13.01,17.744),Pull (-13.92,17.744) (-14.83,17.744),Pull (-7.284,16.195) (-2.456,17.926),Pull (-1.819,17.562) (-1.182,17.198),Pull (-2.001,17.926) (-2.820,18.654),Pull (-3.531,19.888) (-3.002,23.203),Pull (-2.274,23.476) (-1.000,23.749)]
    |> filled lightGreen |> addOutline (solid 0.5) black
    ,
    circle 6
    |> filled white |> addOutline (solid 0.5) black
    |> move (-1,40)
    ,
    circle 6
    |> filled white |> addOutline (solid 0.5) black
    |> move (-14,40)
    ,
    circle 1
    |> filled black
    |> move (-11,39)
    ,
    circle 1
    |> filled black
    |> move (-4,39)
    ,
    curve (6.0164,43.844) [Pull (5.1139,43.694) (4.2115,43.544),Pull (-0.526,47.666) (-5.264,45.349),Pull (-7.746,45.574) (-10.22,45.800),Pull (-15.04,47.352) (-18.95,44.145),Pull (-20.30,43.544) (-21.65,42.942),Pull (-21.94,48.654) (-18.35,51.967),Pull (-14.88,54.630) (-9.776,54.373),Pull (-3.617,54.888) (0.9024,53.922),Pull (5.1386,50.998) (5.4148,47.153),Pull (6.1820,48.045) (7.0693,48.056),Pull (8.6678,46.985) (9.6263,47.153),Pull (10.904,47.605) (12.183,48.056),Pull (12.408,47.605) (12.634,47.153),Pull (10.980,46.702) (9.3254,46.251),Pull (7.9630,46.382) (7.5205,47.153),Pull (6.3924,46.777) (5.2643,46.401),Pull (5.4900,46.101) (5.7156,45.800),Pull (6.6724,46.245) (7.0693,46.251),Pull (9.0822,45.798) (9.1750,44.145),Pull (9.9271,43.769) (10.679,43.393),Pull (10.603,42.942) (10.528,42.491),Pull (9.7767,42.867) (9.0246,43.243),Pull (8.0382,44.170) (7.9717,44.897),Pull (6.9653,45.922) (6.9189,44.747),Pull (6.3924,44.672) (6.0164,43.844)]
    |> filled green |> addOutline (solid 0.5) black
  ]
  
scene1Speech = group
  [
    roundedRect 10 15 5
                        |> filled black
                        |> scale 6
                        |> rotate (degrees -90) 
                        |> move (30,40)
                        ,
                        curve (0,0) [Pull (10,0) (20,-10)]
                        |> filled black
                        |> scale 2.5
                        |> rotate (degrees -120)
                        |> move (25,30)
                        ,
                        text "You are sick with COVID"
                        |> filled white
                        |> move (0.01,115)
                        |> scale 0.5
                        ,
                        text "and so is the rest of Earth."
                        |> filled white
                        |> move (0.01,105)
                        |> scale 0.5
                        ,
                        text "you must build the vaccine"
                        |> filled white
                        |> move (0.01,95)
                        |> scale 0.5
                        ,
                        text "a late doctor made to save"
                        |> filled white
                        |> move (0.01,85)
                        |> scale 0.5
                        ,
                        text "Earth, and banish COVID!"
                        |> filled white
                        |> move (0.01,75)
                        |> scale 0.5
                        ,
                        text "I will also guide you to"
                        |> filled white
                        |> move (0.01,65)
                        |> scale 0.5
                        ,
                        text "learn about COVID-19."
                        |> filled white
                        |> move (0.01,55)
                        |> scale 0.5
                        ,
                         text "Build Pfizer, then get"
                        |> filled white
                        |> move (10,45)
                        |> scale 0.5
                        ,
                         text "the Pfizer"
                        |> filled white
                        |> move (30,35)
                        |> scale 0.5
                        ,
                        text "vaccine!"
                        |> filled white
                        |> move (40,25)
                        |> scale 0.5
                        ,
                        text "My assistant is Pac-Man here."
                        |> filled black
                        |> move (10,-30)
                        |> scale 0.5
                        ,
                        text "He'll be helping!"
                        |> filled black
                        |> move (10,-40)
                        |> scale 0.5
  ]
 
mRNA = group
 [
 curve (-34.43,-17.81) [Pull (-34.36,-19.62) (-34.30,-21.42),Pull (-28.83,-6.920) (-23.35,-5.138),Pull (-18.56,-3.948) (-10.01,-23.15),Pull (-1.809,-31.98) (5.0719,-22.49),Pull (11.271,-7.634) (16.550,-5.138),Pull (20.776,-4.426) (28.162,-19.95),Pull (32.040,-26.66) (36.437,-27.29),Pull (41.848,-27.38) (44.179,-23.95),Pull (50.451,-8.728) (55.124,-5.939),Pull (55.057,-5.071) (54.990,-4.204),Pull (51.119,-7.328) (47.249,-12.21),Pull (42.437,-25.56) (37.906,-26.62),Pull (31.166,-24.98) (25.626,-11.14),Pull (23.315,-4.821) (17.885,-4.337),Pull (12.993,-4.334) (8.5422,-10.21),Pull (2.4633,-25.23) (-2.135,-26.62),Pull (-7.808,-25.88) (-14.68,-9.943),Pull (-19.03,-1.761) (-26.02,-5.539),Pull (-31.49,-9.885) (-34.43,-17.81)]
  |> filled blue
  |> addOutline (solid 0.5) black
  ,
  curve (-28.56,-10.21) [Pull (-28.56,-10.74) (-28.56,-11.27),Pull (-27.76,-11.14) (-26.96,-11.01),Pull (-26.89,-9.409) (-26.82,-7.808),Pull (-27.69,-8.608) (-28.56,-10.21)]
  |> filled yellow
  |> addOutline (solid 0.5) black
  ,
  curve (-23.55,-5.405) [Pull (-23.55,-9.142) (-23.55,-12.88),Pull (-24.29,-12.81) (-25.02,-12.74),Pull (-25.09,-9.476) (-25.15,-6.206),Pull (-24.41,-5.406) (-23.55,-5.405)]
  |> filled lightBlue
  |> addOutline (solid 0.5) black
  ,
  curve (-21.22,-15.01) [Pull (-20.42,-15.01) (-19.62,-15.01),Pull (-19.75,-10.74) (-19.88,-6.473),Pull (-20.55,-5.939) (-21.22,-5.405),Pull (-21.22,-10.07) (-21.22,-15.01)]
  |> filled green
  |> addOutline (solid 0.5) black
  ,
  curve (-17.41,-17.41) [Pull (-16.81,-17.41) (-16.21,-17.41),Pull (-16.15,-14.81) (-16.08,-12.21),Pull (-16.75,-10.74) (-17.41,-9.276),Pull (-17.41,-13.41) (-17.41,-17.41)]
  |> filled red
  |> addOutline (solid 0.5) black
  ,
  curve (-13.14,-17.28) [Pull (-13.14,-19.08) (-13.14,-20.88),Pull (-12.41,-20.82) (-11.67,-20.75),Pull (-11.67,-19.95) (-11.67,-19.15),Pull (-12.47,-18.01) (-13.14,-17.28)]
  |> filled green
  |> addOutline (solid 0.5) black
  ]

dna = group
 [
 curve (-34.56,26.227) [Pull (-34.50,24.358) (-34.43,22.490),Pull (-31.27,33.538) (-23.22,39.307),Pull (-17.77,38.971) (-10.41,21.555),Pull (-6.827,17.800) (-3.603,17.284),Pull (2.3802,16.986) (4.0041,20.888),Pull (7.6746,27.828) (11.345,34.769),Pull (13.181,37.725) (16.417,39.441),Pull (20.613,38.625) (22.289,35.169),Pull (26.427,28.095) (30.565,21.021),Pull (38.652,13.241) (43.778,20.621),Pull (50.571,35.717) (55.124,38.373),Pull (55.057,39.307) (54.990,40.241),Pull (49.612,36.289) (46.314,30.098),Pull (42.043,18.625) (37.772,17.952),Pull (32.688,19.162) (30.565,24.492),Pull (25.960,32.752) (22.156,38.373),Pull (16.350,43.098) (10.544,36.104),Pull (6.6932,28.236) (2.0020,21.288),Pull (1.1865,18.207) (-2.269,18.085),Pull (-6.118,18.894) (-7.607,21.822),Pull (-12.15,28.430) (-15.61,35.837),Pull (-18.25,39.772) (-21.62,40.108),Pull (-25.53,39.866) (-28.69,36.905),Pull (-33.55,31.572) (-34.56,26.227)]
  |> filled blue
  |> addOutline (solid 0.5) black
  ,
  curve (-34.56,39.841) [Pull (-34.56,39.174) (-34.56,38.506),Pull (-30.51,35.475) (-28.42,29.964),Pull (-25.29,22.685) (-19.88,18.085),Pull (-16.94,16.765) (-15.08,17.284),Pull (-11.29,18.046) (-9.743,20.888),Pull (-4.618,32.810) (-0.133,37.172),Pull (1.2679,38.440) (2.6694,39.708),Pull (5.4719,38.372) (7.4744,36.237),Pull (10.851,30.864) (14.148,24.492),Pull (16.150,20.355) (19.353,18.218),Pull (22.690,16.651) (26.027,17.284),Pull (29.909,19.793) (30.031,21.422),Pull (35.577,35.478) (42.043,39.574),Pull (47.066,37.172) (47.649,34.769),Pull (51.419,29.583) (54.590,22.757),Pull (54.857,24.025) (55.124,25.293),Pull (52.280,32.019) (48.316,37.305),Pull (46.454,39.953) (42.711,40.241),Pull (37.033,38.725) (34.035,33.968),Pull (29.004,23.354) (26.294,19.820),Pull (25.026,18.753) (23.758,18.085),Pull (20.041,18.434) (17.484,22.223),Pull (10.632,35.131) (7.3409,38.640),Pull (5.8784,40.514) (2.5359,40.508),Pull (0.0993,40.446) (-3.737,36.504),Pull (-5.420,35.144) (-10.94,23.424),Pull (-12.65,19.068) (-15.88,17.952),Pull (-19.73,18.241) (-22.02,22.490),Pull (-25.51,28.776) (-28.69,34.502),Pull (-30.97,39.172) (-34.56,39.841)]
  |> filled blue
  |> addOutline (solid 0.5) black
  ,
  curve (-25.22,37.972) [Pull (-25.29,33.034) (-25.35,28.095),Pull (-24.62,26.827) (-23.89,25.559),Pull (-23.75,32.166) (-23.62,38.773),Pull (-24.42,38.373) (-25.22,37.972)]
  |> filled yellow
  |> addOutline (solid 0.5) black
  ,
  curve (-21.48,38.773) [Pull (-21.55,30.164) (-21.62,21.555),Pull (-20.82,20.688) (-20.02,19.820),Pull (-19.95,28.696) (-19.88,37.572),Pull (-20.68,38.239) (-21.48,38.773)]
  |> filled green
  |> addOutline (solid 0.5) black
  ,
  curve (-17.48,34.903) [Pull (-17.55,26.694) (-17.61,18.485),Pull (-16.88,18.032) (-16.15,18.218),Pull (-16.08,25.359) (-16.01,32.500),Pull (-16.68,33.701) (-17.48,34.903)]
  |> filled red
  |> addOutline (solid 0.5) black
  ]


brick = group
  [
  rect 30 20
  |> filled lightGray
  ,
  rect 30 20
  |> outlined (solid 1) gray
  ]
brickrow6 = group[
  brick
  |> move (-99,65)
  ,
  brick
  |> move (-69,65)
  ,
  brick
  |> move (-39,65)
  ,
  brick
  |> move (-9,65)
  ,
  brick
  |> move (21,65)
  ,
  brick
  |> move (51,65)
  ,
  brick
  |> move (81,65)]
 
brickrow5 = group[
  brick
  |> move (-81,45)
  ,
  brick
  |> move (-51,45)
  ,
  brick
  |> move (-21,45)
  ,
  brick
  |> move (9,45)
  ,
  brick
  |> move (39,45)
  ,
  brick
  |> move (69,45)
  ,
  brick
  |> move (99,45)]
brickrow4 = group[
  brick
  |> move (-89,25)
  ,
  brick
  |> move (-59,25)
  ,
  brick
  |> move (-29,25)
  ,
  brick
  |> move (1,25)
  ,
  brick
  |> move (29,25)
  ,
  brick
  |> move (59,25)
  ,
  brick
  |> move (89,25)]
brickrow3 = group[
  brick
  |> move (-99,5)
  ,
  brick
  |> move (-69,5)
  ,
  brick
  |> move (-39,5)
  ,
  brick
  |> move (-9,5)
  ,
  brick
  |> move (21,5)
  ,
  brick
  |> move (51,5)
  ,
  brick
  |> move (81,5)]
brickrow2 = group[
  brick
  |> move (-81,-15)
  ,
  brick
  |> move (-51,-15)
  ,
  brick
  |> move (-21,-15)
  ,
  brick
  |> move (9,-15)
  ,
  brick
  |> move (39,-15)
  ,
  brick
  |> move (69,-15)
  ,
  brick
  |> move (99,-15)]
brickrow = group
  [
  brick
  |> move (-89,-35)
  ,
  brick
  |> move (-59,-35)
  ,
  brick
  |> move (-29,-35)
  ,
  brick
  |> move (1,-35)
  ,
  brick
  |> move (29,-35)
  ,
  brick
  |> move (59,-35)
  ,
  brick
  |> move (89,-35)]
brickwall = group
  [
  brickrow
  ,
  brickrow2
  ,
  brickrow3
  ,
  brickrow4
  ,
  brickrow5
  ,
  brickrow6
  ]
chair = group
  [
  roundedRect 25 30 3
  |> filled lightBlue
  |> rotate (degrees 90)
  |> move (-70,-16)
  ,
  roundedRect 25 30 3
  |> outlined (solid 1) blue
  |> rotate (degrees 90)
  |> move (-70,-16)
  ,
  roundedRect 15 30 3
  |> filled lightBlue
  |> rotate (degrees 90)
  |> move (-70,-35)
  ,
  roundedRect 15 30 3
  |> outlined (solid 1) blue
  |> rotate (degrees 90)
  |> move (-70,-35)
  ,
  roundedRect 4 30 1
  |> filled black
  |> move (-86,-35)
  ,
  roundedRect 4 30 1
  |> filled black
  |> move (-54,-35)
  ]
desk = group[
  rect 100 50
  |> filled white
  |> move (50,-30)
  ,
  rect 100 50
  |> outlined (solid 2) darkGray
  |> move (50,-30)
  ,
  roundedRect 100 5 1
  |> filled darkGray
  |> move (47,-5)]
hospital_sign = group[
  rect 10 25
  |> filled red
  |> move (50,-30)
  ,
  rect 10 25
  |> filled red
  |> rotate (degrees 90)
  |> move (50,-30)]
clock = group
  [circle 15
  |> filled black
  |> move (-50,45)
  ,
  circle 14
  |> filled white
  |> move (-50,45)
  ,
  rect 1 12
  |> filled black
  |> move (-50,50)
  ,
  circle 1
  |> filled black
  |> move (-50,45)]
plant = group[
  roundedRect 10 17 7
  |> filled darkGreen
  |> move (75,15)
  ,
  rect 12 12.5
  |> filled brown
  |> move (75,4)
  ,
  roundedRect 6 14 2
  |> filled darkBrown
  |> rotate (degrees 90)
  |> move (75,8)]
computer = group [
  roundedRect 40 25 4
  |> filled black
  |> move (35,15)
  ,
  rect 7 6
  |> filled black
  |> move (35,0)
  ,
  rect 35 2
  |> filled black
  |> move (35,-2)]
hospitalBackground = group
  [
  brickwall
  ,
  rect 200 20
  |> filled lightCharcoal
  |> move (0,-55.5)
  ,
  desk
  ,
  computer
  ,
  plant
  ,
  clock
  ,
  chair
  |> move (-2,0)
  ,
  chair
  |> move (43,0)
  ,
  hospital_sign
  ]
pacMan model = group
 [
 wedge 30 (0.6+abs(sin(3*model.time)))
 |> filled yellow 
 |> move (60*sin(1*model.time) , 0)
 ,
 circle 1
 |> filled black
 |> move (-0.1, 2)
 |> scale 8
 |> move (60*sin(1*model.time) , 0)
 ]


phase1 = group
  [
    myHospital
    |> scale 0.8 |> move (30,10)
    ,
    curve (-46.85,-44.29) [Pull (-47.75,-43.84) (-48.65,-43.39),Pull (-48.80,-42.34) (-48.95,-41.28),Pull (-49.10,-39.93) (-49.25,-38.58),Pull (-50.16,-37.15) (-51.06,-35.72),Pull (-50.61,-35.27) (-50.16,-34.82),Pull (-51.81,-23.46) (-49.10,-12.10),Pull (-49.93,-6.768) (-50.76,-1.428),Pull (-51.81,-1.128) (-52.86,-0.827),Pull (-52.11,1.8801) (-51.36,4.5875),Pull (-58.92,17.201) (-54.37,33.015),Pull (-50.47,36.067) (-46.25,38.279),Pull (-46.02,39.934) (-45.80,41.588),Pull (-46.02,42.415) (-46.25,43.243),Pull (-46.78,44.972) (-45.95,46.702),Pull (-46.70,50.484) (-42.49,51.666),Pull (-38.66,51.648) (-36.92,49.710),Pull (-35.22,45.800) (-36.17,41.889),Pull (-35.52,39.514) (-39.03,37.978),Pull (-38.45,36.850) (-38.27,35.722),Pull (-35.72,34.218) (-33.61,32.714),Pull (-33.01,28.502) (-32.41,24.291),Pull (-32.03,19.177) (-31.66,14.063),Pull (-31.81,12.032) (-31.96,10.002),Pull (-32.86,9.0246) (-33.76,8.0470),Pull (-33.24,7.3701) (-32.71,6.6933),Pull (-32.48,3.8354) (-32.26,0.9776),Pull (-32.41,-2.933) (-32.56,-6.843),Pull (-36.43,-26.50) (-33.46,-30.15),Pull (-33.91,-30.90) (-34.36,-31.66),Pull (-34.14,-32.56) (-33.91,-33.46),Pull (-30.68,-37.23) (-27.45,-37.67),Pull (-27.52,-38.35) (-27.60,-39.03),Pull (-29.78,-39.18) (-31.96,-39.33),Pull (-34.20,-39.68) (-36.17,-38.27),Pull (-36.47,-38.27) (-36.77,-38.27),Pull (-38.27,-38.27) (-39.78,-38.27),Pull (-39.85,-36.02) (-39.93,-33.76),Pull (-40.38,-33.39) (-40.83,-33.01),Pull (-40.68,-31.81) (-40.53,-30.60),Pull (-40.68,-28.57) (-40.83,-26.54),Pull (-41.98,-22.26) (-41.28,-17.97),Pull (-41.28,-16.16) (-41.28,-14.36),Pull (-41.28,-13.98) (-41.28,-13.61),Pull (-42.29,-17.76) (-43.69,-20.07),Pull (-43.26,-24.73) (-44.14,-27.90),Pull (-44.30,-30.90) (-44.89,-33.91),Pull (-44.22,-34.06) (-43.54,-34.21),Pull (-43.99,-36.02) (-44.44,-37.82),Pull (-43.89,-41.30) (-42.79,-43.54),Pull (-42.62,-45.90) (-46.85,-44.29)]
    |> filled black |> scale 0.4 |> move (-60,-20)
    ,
    curve (14.965,-34.66) [Pull (13.941,-31.66) (15.116,-28.65),Pull (12.862,-19.97) (12.408,-14.66),Pull (11.732,-14.06) (11.055,-13.46),Pull (11.323,-6.926) (9.5511,1.1280),Pull (9.6744,7.5645) (11.957,13.160),Pull (10.754,14.138) (9.5511,15.116),Pull (7.7127,21.820) (10.754,28.803),Pull (13.837,30.307) (16.921,31.811),Pull (16.996,32.413) (17.071,33.015),Pull (15.134,34.927) (15.116,38.279),Pull (15.930,41.801) (18.425,43.243),Pull (22.862,43.610) (23.539,41.137),Pull (24.890,38.784) (24.441,35.271),Pull (24.112,33.348) (21.584,32.864),Pull (21.884,32.112) (22.185,31.360),Pull (24.965,30.998) (25.945,29.555),Pull (29.049,22.618) (25.193,16.921),Pull (24.659,14.004) (25.645,11.807),Pull (26.096,9.1750) (26.547,6.5428),Pull (28.106,0.3760) (25.945,-5.790),Pull (24.869,-9.250) (25.193,-12.70),Pull (24.441,-13.46) (23.689,-14.21),Pull (24.077,-19.00) (22.185,-24.44),Pull (21.380,-28.27) (21.734,-32.11),Pull (20.694,-35.38) (17.974,-32.86),Pull (18.124,-30.68) (18.274,-28.50),Pull (18.951,-26.69) (19.628,-24.89),Pull (19.792,-21.73) (18.876,-18.57),Pull (19.177,-16.47) (19.478,-14.36),Pull (18.726,-14.13) (17.974,-13.91),Pull (17.748,-16.47) (17.522,-19.02),Pull (17.227,-22.56) (17.372,-26.09),Pull (17.522,-26.99) (17.673,-27.90),Pull (17.673,-30.90) (17.673,-33.91),Pull (16.244,-36.34) (14.965,-34.66)]
    |> filled black |> scale 0.45 |> move (-55,-20)
    ,
    curve (-9.400,-38.12) [Pull (-9.974,-35.69) (-8.347,-33.46),Pull (-9.294,-29.02) (-9.400,-24.59),Pull (-9.551,-19.55) (-9.701,-14.51),Pull (-9.475,-11.73) (-9.250,-8.949),Pull (-9.927,-4.061) (-10.60,0.8272),Pull (-11.05,1.1280) (-11.50,1.4289),Pull (-10.73,6.6180) (-9.250,11.807),Pull (-9.895,12.484) (-9.099,13.160),Pull (-11.44,13.760) (-12.70,16.319),Pull (-12.68,24.893) (-11.50,33.466),Pull (-7.821,34.895) (-4.136,36.324),Pull (-1.674,37.484) (-2.933,40.084),Pull (-3.989,41.739) (-3.685,43.393),Pull (-3.377,46.169) (-2.030,47.905),Pull (-0.325,49.422) (1.5793,49.259),Pull (4.1538,48.450) (4.8883,46.401),Pull (5.8987,44.600) (5.1891,42.039),Pull (5.7691,41.287) (5.1891,40.535),Pull (5.0667,38.586) (3.3842,37.678),Pull (2.6619,35.619) (5.3396,35.121),Pull (7.8213,33.917) (10.303,32.714),Pull (9.8519,26.998) (9.4007,21.283),Pull (9.4007,18.049) (9.4007,14.815),Pull (9.7767,10.528) (10.152,6.2420),Pull (9.7015,6.2420) (9.2502,6.2420),Pull (9.2502,4.8131) (9.2502,3.3842),Pull (9.1774,1.2561) (7.1445,1.1280),Pull (6.5428,0.1504) (5.9412,-0.827),Pull (5.9412,-2.707) (5.9412,-4.587),Pull (5.5652,-6.242) (5.1891,-7.896),Pull (5.2779,-16.24) (4.2867,-24.59),Pull (4.3306,-27.90) (3.5346,-31.21),Pull (5.9443,-32.52) (6.9941,-34.66),Pull (7.4396,-36.84) (3.6850,-35.57),Pull (1.8961,-35.22) (0.8272,-34.06),Pull (-0.451,-33.54) (-1.729,-33.01),Pull (-2.290,-28.43) (-2.331,-24.29),Pull (-2.305,-20.82) (-1.880,-18.12),Pull (-1.334,-15.15) (-1.428,-12.70),Pull (-1.579,-9.626) (-1.729,-6.542),Pull (-2.105,-9.851) (-2.481,-13.16),Pull (-2.028,-17.46) (-3.534,-22.33),Pull (-2.629,-27.72) (-3.083,-33.46),Pull (-3.835,-34.44) (-4.587,-35.42),Pull (-4.662,-35.79) (-4.737,-36.17),Pull (-5.240,-37.15) (-6.542,-38.12),Pull (-8.382,-39.33) (-9.400,-38.12)]
    |> filled black |> scale 0.4 |> move (-20,-20)
    
  ]

phase2 = group
  [
    myHospital
    |> scale 0.8 |> move (40,10)
    ,
    curve (-46.85,-44.29) [Pull (-47.75,-43.84) (-48.65,-43.39),Pull (-48.80,-42.34) (-48.95,-41.28),Pull (-49.10,-39.93) (-49.25,-38.58),Pull (-50.16,-37.15) (-51.06,-35.72),Pull (-50.61,-35.27) (-50.16,-34.82),Pull (-51.81,-23.46) (-49.10,-12.10),Pull (-49.93,-6.768) (-50.76,-1.428),Pull (-51.81,-1.128) (-52.86,-0.827),Pull (-52.11,1.8801) (-51.36,4.5875),Pull (-58.92,17.201) (-54.37,33.015),Pull (-50.47,36.067) (-46.25,38.279),Pull (-46.02,39.934) (-45.80,41.588),Pull (-46.02,42.415) (-46.25,43.243),Pull (-46.78,44.972) (-45.95,46.702),Pull (-46.70,50.484) (-42.49,51.666),Pull (-38.66,51.648) (-36.92,49.710),Pull (-35.22,45.800) (-36.17,41.889),Pull (-35.52,39.514) (-39.03,37.978),Pull (-38.45,36.850) (-38.27,35.722),Pull (-35.72,34.218) (-33.61,32.714),Pull (-33.01,28.502) (-32.41,24.291),Pull (-32.03,19.177) (-31.66,14.063),Pull (-31.81,12.032) (-31.96,10.002),Pull (-32.86,9.0246) (-33.76,8.0470),Pull (-33.24,7.3701) (-32.71,6.6933),Pull (-32.48,3.8354) (-32.26,0.9776),Pull (-32.41,-2.933) (-32.56,-6.843),Pull (-36.43,-26.50) (-33.46,-30.15),Pull (-33.91,-30.90) (-34.36,-31.66),Pull (-34.14,-32.56) (-33.91,-33.46),Pull (-30.68,-37.23) (-27.45,-37.67),Pull (-27.52,-38.35) (-27.60,-39.03),Pull (-29.78,-39.18) (-31.96,-39.33),Pull (-34.20,-39.68) (-36.17,-38.27),Pull (-36.47,-38.27) (-36.77,-38.27),Pull (-38.27,-38.27) (-39.78,-38.27),Pull (-39.85,-36.02) (-39.93,-33.76),Pull (-40.38,-33.39) (-40.83,-33.01),Pull (-40.68,-31.81) (-40.53,-30.60),Pull (-40.68,-28.57) (-40.83,-26.54),Pull (-41.98,-22.26) (-41.28,-17.97),Pull (-41.28,-16.16) (-41.28,-14.36),Pull (-41.28,-13.98) (-41.28,-13.61),Pull (-42.29,-17.76) (-43.69,-20.07),Pull (-43.26,-24.73) (-44.14,-27.90),Pull (-44.30,-30.90) (-44.89,-33.91),Pull (-44.22,-34.06) (-43.54,-34.21),Pull (-43.99,-36.02) (-44.44,-37.82),Pull (-43.89,-41.30) (-42.79,-43.54),Pull (-42.62,-45.90) (-46.85,-44.29)]
    |> filled black |> scale 0.4 |> move (-60,-20)
    ,
    curve (-46.85,-44.29) [Pull (-47.75,-43.84) (-48.65,-43.39),Pull (-48.80,-42.34) (-48.95,-41.28),Pull (-49.10,-39.93) (-49.25,-38.58),Pull (-50.16,-37.15) (-51.06,-35.72),Pull (-50.61,-35.27) (-50.16,-34.82),Pull (-51.81,-23.46) (-49.10,-12.10),Pull (-49.93,-6.768) (-50.76,-1.428),Pull (-51.81,-1.128) (-52.86,-0.827),Pull (-52.11,1.8801) (-51.36,4.5875),Pull (-58.92,17.201) (-54.37,33.015),Pull (-50.47,36.067) (-46.25,38.279),Pull (-46.02,39.934) (-45.80,41.588),Pull (-46.02,42.415) (-46.25,43.243),Pull (-46.78,44.972) (-45.95,46.702),Pull (-46.70,50.484) (-42.49,51.666),Pull (-38.66,51.648) (-36.92,49.710),Pull (-35.22,45.800) (-36.17,41.889),Pull (-35.52,39.514) (-39.03,37.978),Pull (-38.45,36.850) (-38.27,35.722),Pull (-35.72,34.218) (-33.61,32.714),Pull (-33.01,28.502) (-32.41,24.291),Pull (-32.03,19.177) (-31.66,14.063),Pull (-31.81,12.032) (-31.96,10.002),Pull (-32.86,9.0246) (-33.76,8.0470),Pull (-33.24,7.3701) (-32.71,6.6933),Pull (-32.48,3.8354) (-32.26,0.9776),Pull (-32.41,-2.933) (-32.56,-6.843),Pull (-36.43,-26.50) (-33.46,-30.15),Pull (-33.91,-30.90) (-34.36,-31.66),Pull (-34.14,-32.56) (-33.91,-33.46),Pull (-30.68,-37.23) (-27.45,-37.67),Pull (-27.52,-38.35) (-27.60,-39.03),Pull (-29.78,-39.18) (-31.96,-39.33),Pull (-34.20,-39.68) (-36.17,-38.27),Pull (-36.47,-38.27) (-36.77,-38.27),Pull (-38.27,-38.27) (-39.78,-38.27),Pull (-39.85,-36.02) (-39.93,-33.76),Pull (-40.38,-33.39) (-40.83,-33.01),Pull (-40.68,-31.81) (-40.53,-30.60),Pull (-40.68,-28.57) (-40.83,-26.54),Pull (-41.98,-22.26) (-41.28,-17.97),Pull (-41.28,-16.16) (-41.28,-14.36),Pull (-41.28,-13.98) (-41.28,-13.61),Pull (-42.29,-17.76) (-43.69,-20.07),Pull (-43.26,-24.73) (-44.14,-27.90),Pull (-44.30,-30.90) (-44.89,-33.91),Pull (-44.22,-34.06) (-43.54,-34.21),Pull (-43.99,-36.02) (-44.44,-37.82),Pull (-43.89,-41.30) (-42.79,-43.54),Pull (-42.62,-45.90) (-46.85,-44.29)]
    |> filled black |> scale 0.4 |> move (-15,-20)
    ,
    curve (14.965,-34.66) [Pull (13.941,-31.66) (15.116,-28.65),Pull (12.862,-19.97) (12.408,-14.66),Pull (11.732,-14.06) (11.055,-13.46),Pull (11.323,-6.926) (9.5511,1.1280),Pull (9.6744,7.5645) (11.957,13.160),Pull (10.754,14.138) (9.5511,15.116),Pull (7.7127,21.820) (10.754,28.803),Pull (13.837,30.307) (16.921,31.811),Pull (16.996,32.413) (17.071,33.015),Pull (15.134,34.927) (15.116,38.279),Pull (15.930,41.801) (18.425,43.243),Pull (22.862,43.610) (23.539,41.137),Pull (24.890,38.784) (24.441,35.271),Pull (24.112,33.348) (21.584,32.864),Pull (21.884,32.112) (22.185,31.360),Pull (24.965,30.998) (25.945,29.555),Pull (29.049,22.618) (25.193,16.921),Pull (24.659,14.004) (25.645,11.807),Pull (26.096,9.1750) (26.547,6.5428),Pull (28.106,0.3760) (25.945,-5.790),Pull (24.869,-9.250) (25.193,-12.70),Pull (24.441,-13.46) (23.689,-14.21),Pull (24.077,-19.00) (22.185,-24.44),Pull (21.380,-28.27) (21.734,-32.11),Pull (20.694,-35.38) (17.974,-32.86),Pull (18.124,-30.68) (18.274,-28.50),Pull (18.951,-26.69) (19.628,-24.89),Pull (19.792,-21.73) (18.876,-18.57),Pull (19.177,-16.47) (19.478,-14.36),Pull (18.726,-14.13) (17.974,-13.91),Pull (17.748,-16.47) (17.522,-19.02),Pull (17.227,-22.56) (17.372,-26.09),Pull (17.522,-26.99) (17.673,-27.90),Pull (17.673,-30.90) (17.673,-33.91),Pull (16.244,-36.34) (14.965,-34.66)]
    |> filled black |> scale 0.45 |> move (-55,-20)
    ,
    curve (14.965,-34.66) [Pull (13.941,-31.66) (15.116,-28.65),Pull (12.862,-19.97) (12.408,-14.66),Pull (11.732,-14.06) (11.055,-13.46),Pull (11.323,-6.926) (9.5511,1.1280),Pull (9.6744,7.5645) (11.957,13.160),Pull (10.754,14.138) (9.5511,15.116),Pull (7.7127,21.820) (10.754,28.803),Pull (13.837,30.307) (16.921,31.811),Pull (16.996,32.413) (17.071,33.015),Pull (15.134,34.927) (15.116,38.279),Pull (15.930,41.801) (18.425,43.243),Pull (22.862,43.610) (23.539,41.137),Pull (24.890,38.784) (24.441,35.271),Pull (24.112,33.348) (21.584,32.864),Pull (21.884,32.112) (22.185,31.360),Pull (24.965,30.998) (25.945,29.555),Pull (29.049,22.618) (25.193,16.921),Pull (24.659,14.004) (25.645,11.807),Pull (26.096,9.1750) (26.547,6.5428),Pull (28.106,0.3760) (25.945,-5.790),Pull (24.869,-9.250) (25.193,-12.70),Pull (24.441,-13.46) (23.689,-14.21),Pull (24.077,-19.00) (22.185,-24.44),Pull (21.380,-28.27) (21.734,-32.11),Pull (20.694,-35.38) (17.974,-32.86),Pull (18.124,-30.68) (18.274,-28.50),Pull (18.951,-26.69) (19.628,-24.89),Pull (19.792,-21.73) (18.876,-18.57),Pull (19.177,-16.47) (19.478,-14.36),Pull (18.726,-14.13) (17.974,-13.91),Pull (17.748,-16.47) (17.522,-19.02),Pull (17.227,-22.56) (17.372,-26.09),Pull (17.522,-26.99) (17.673,-27.90),Pull (17.673,-30.90) (17.673,-33.91),Pull (16.244,-36.34) (14.965,-34.66)]
    |> filled black |> scale 0.45 |> move (-15,-20)
    ,
    curve (-9.400,-38.12) [Pull (-9.974,-35.69) (-8.347,-33.46),Pull (-9.294,-29.02) (-9.400,-24.59),Pull (-9.551,-19.55) (-9.701,-14.51),Pull (-9.475,-11.73) (-9.250,-8.949),Pull (-9.927,-4.061) (-10.60,0.8272),Pull (-11.05,1.1280) (-11.50,1.4289),Pull (-10.73,6.6180) (-9.250,11.807),Pull (-9.895,12.484) (-9.099,13.160),Pull (-11.44,13.760) (-12.70,16.319),Pull (-12.68,24.893) (-11.50,33.466),Pull (-7.821,34.895) (-4.136,36.324),Pull (-1.674,37.484) (-2.933,40.084),Pull (-3.989,41.739) (-3.685,43.393),Pull (-3.377,46.169) (-2.030,47.905),Pull (-0.325,49.422) (1.5793,49.259),Pull (4.1538,48.450) (4.8883,46.401),Pull (5.8987,44.600) (5.1891,42.039),Pull (5.7691,41.287) (5.1891,40.535),Pull (5.0667,38.586) (3.3842,37.678),Pull (2.6619,35.619) (5.3396,35.121),Pull (7.8213,33.917) (10.303,32.714),Pull (9.8519,26.998) (9.4007,21.283),Pull (9.4007,18.049) (9.4007,14.815),Pull (9.7767,10.528) (10.152,6.2420),Pull (9.7015,6.2420) (9.2502,6.2420),Pull (9.2502,4.8131) (9.2502,3.3842),Pull (9.1774,1.2561) (7.1445,1.1280),Pull (6.5428,0.1504) (5.9412,-0.827),Pull (5.9412,-2.707) (5.9412,-4.587),Pull (5.5652,-6.242) (5.1891,-7.896),Pull (5.2779,-16.24) (4.2867,-24.59),Pull (4.3306,-27.90) (3.5346,-31.21),Pull (5.9443,-32.52) (6.9941,-34.66),Pull (7.4396,-36.84) (3.6850,-35.57),Pull (1.8961,-35.22) (0.8272,-34.06),Pull (-0.451,-33.54) (-1.729,-33.01),Pull (-2.290,-28.43) (-2.331,-24.29),Pull (-2.305,-20.82) (-1.880,-18.12),Pull (-1.334,-15.15) (-1.428,-12.70),Pull (-1.579,-9.626) (-1.729,-6.542),Pull (-2.105,-9.851) (-2.481,-13.16),Pull (-2.028,-17.46) (-3.534,-22.33),Pull (-2.629,-27.72) (-3.083,-33.46),Pull (-3.835,-34.44) (-4.587,-35.42),Pull (-4.662,-35.79) (-4.737,-36.17),Pull (-5.240,-37.15) (-6.542,-38.12),Pull (-8.382,-39.33) (-9.400,-38.12)]
    |> filled black |> scale 0.4 |> move (-20,-20)
    ,
    curve (-9.400,-38.12) [Pull (-9.974,-35.69) (-8.347,-33.46),Pull (-9.294,-29.02) (-9.400,-24.59),Pull (-9.551,-19.55) (-9.701,-14.51),Pull (-9.475,-11.73) (-9.250,-8.949),Pull (-9.927,-4.061) (-10.60,0.8272),Pull (-11.05,1.1280) (-11.50,1.4289),Pull (-10.73,6.6180) (-9.250,11.807),Pull (-9.895,12.484) (-9.099,13.160),Pull (-11.44,13.760) (-12.70,16.319),Pull (-12.68,24.893) (-11.50,33.466),Pull (-7.821,34.895) (-4.136,36.324),Pull (-1.674,37.484) (-2.933,40.084),Pull (-3.989,41.739) (-3.685,43.393),Pull (-3.377,46.169) (-2.030,47.905),Pull (-0.325,49.422) (1.5793,49.259),Pull (4.1538,48.450) (4.8883,46.401),Pull (5.8987,44.600) (5.1891,42.039),Pull (5.7691,41.287) (5.1891,40.535),Pull (5.0667,38.586) (3.3842,37.678),Pull (2.6619,35.619) (5.3396,35.121),Pull (7.8213,33.917) (10.303,32.714),Pull (9.8519,26.998) (9.4007,21.283),Pull (9.4007,18.049) (9.4007,14.815),Pull (9.7767,10.528) (10.152,6.2420),Pull (9.7015,6.2420) (9.2502,6.2420),Pull (9.2502,4.8131) (9.2502,3.3842),Pull (9.1774,1.2561) (7.1445,1.1280),Pull (6.5428,0.1504) (5.9412,-0.827),Pull (5.9412,-2.707) (5.9412,-4.587),Pull (5.5652,-6.242) (5.1891,-7.896),Pull (5.2779,-16.24) (4.2867,-24.59),Pull (4.3306,-27.90) (3.5346,-31.21),Pull (5.9443,-32.52) (6.9941,-34.66),Pull (7.4396,-36.84) (3.6850,-35.57),Pull (1.8961,-35.22) (0.8272,-34.06),Pull (-0.451,-33.54) (-1.729,-33.01),Pull (-2.290,-28.43) (-2.331,-24.29),Pull (-2.305,-20.82) (-1.880,-18.12),Pull (-1.334,-15.15) (-1.428,-12.70),Pull (-1.579,-9.626) (-1.729,-6.542),Pull (-2.105,-9.851) (-2.481,-13.16),Pull (-2.028,-17.46) (-3.534,-22.33),Pull (-2.629,-27.72) (-3.083,-33.46),Pull (-3.835,-34.44) (-4.587,-35.42),Pull (-4.662,-35.79) (-4.737,-36.17),Pull (-5.240,-37.15) (-6.542,-38.12),Pull (-8.382,-39.33) (-9.400,-38.12)]
    |> filled black |> scale 0.4 |> move (-60,-20)
  ]

wrongAnswer = group
  [
    hospitalBackground
  ,
  doctor
  |> scale 0.7
  |> move (-50,-10)
  ,
  speechBubble
  |> scale 1
  |> move (10,33)
  ,
  text "Wrong answer. Please try again!"
    |> filled black |> scale 0.4
    |> move (-30,40)
  ]

scene10 = group
  [
   labBackground
  ,
  doctor 
  |> scale 0.7
  |> move (-50,-10)
  ,
  speechBubble
  |> scale 1
  |> move (10,33)
  ,
  text "Basic table sugar, also known as sucrose,"
    |> filled black |> scale 0.4
    |> move (-35,50)
    ,
  text "can also be found in the new COVID vaccine."
    |> filled black |> scale 0.4
    |> move (-35,45)
    ,
  text "This ingredient helps the molecules maintain "
    |> filled black |> scale 0.4
    |> move (-35,40)
    ,
  text "their shape during freezing."
    |> filled black |> scale 0.4
    |> move (-35,35)
  ]

correctAnswer = group
  [
   hospitalBackground
  ,
  doctor 
  |> scale 0.7
  |> move (-50,-10)
  ,
  speechBubble
  |> scale 1
  |> move (10,33)
  ,
  text "Correct!!! The answer is basic table sugar"
    |> filled black |> scale 0.4
    |> move (-40,35)
  ]

myHospital = group 
  [
    curve (-49.71,26.848) [Pull (-48.80,-12.33) (-47.90,-51.51),Pull (3.6850,-52.34) (55.276,-53.17),Pull (56.629,-16.09) (57.983,20.982),Pull (34.368,22.185) (10.754,23.388),Pull (9.3254,-14.51) (7.8965,-52.41),Pull (9.4007,-12.18) (10.904,28.051),Pull (3.0834,28.803) (-4.737,29.555),Pull (-4.361,39.257) (-3.985,48.958),Pull (-19.25,49.034) (-34.51,49.109),Pull (-33.99,39.407) (-33.46,29.706),Pull (-40.83,28.502) (-49.71,26.848)]
   |> filled gray |> addOutline (solid 0.5) black
   ,
   curve (-6.843,-52.11) [Pull (-6.542,-37.00) (-6.242,-21.88),Pull (-19.10,-21.88) (-31.96,-21.88),Pull (-32.11,-36.77) (-32.26,-51.66),Pull (-30.98,-51.96) (-29.70,-52.26),Pull (-29.85,-37.82) (-30.00,-23.38),Pull (-25.72,-23.46) (-21.43,-23.53),Pull (-21.28,-37.60) (-21.13,-51.66),Pull (-19.62,-52.11) (-18.12,-52.56),Pull (-17.82,-38.12) (-17.52,-23.68),Pull (-13.01,-23.46) (-8.498,-23.23),Pull (-8.723,-37.75) (-8.949,-52.26),Pull (-8.122,-52.49) (-6.843,-52.11)]
   |> filled lightBlue |> addOutline (solid 0.5) black
   ,
   curve (-22.78,31.811) [Pull (-25.34,31.887) (-27.90,31.962),Pull (-28.20,35.797) (-28.50,39.633),Pull (-25.72,39.858) (-22.93,40.084),Pull (-22.93,42.792) (-22.93,45.499),Pull (-18.95,45.349) (-14.96,45.198),Pull (-14.81,42.641) (-14.66,40.084),Pull (-12.10,40.009) (-9.551,39.934),Pull (-9.400,36.023) (-9.250,32.112),Pull (-12.03,32.037) (-14.81,31.962),Pull (-14.96,29.931) (-15.11,27.901),Pull (-18.87,27.901) (-22.63,27.901),Pull (-22.78,29.405) (-22.78,31.811)]
   |> filled red |> addOutline (solid 0.5) black
   ,
   curve (-42.34,5.7908) [Pull (-42.34,12.333) (-42.34,18.876),Pull (-35.64,19.177) (-28.95,19.478),Pull (-28.87,13.236) (-28.80,6.9941),Pull (-26.69,6.9941) (-24.59,6.9941),Pull (-24.36,13.612) (-24.14,20.230),Pull (-18.27,19.703) (-12.40,19.177),Pull (-12.70,13.160) (-13.01,7.1445),Pull (-10.37,6.9189) (-7.746,6.6933),Pull (-7.670,13.085) (-7.595,19.478),Pull (-1.353,19.102) (4.8883,18.726),Pull (4.6627,12.559) (4.4371,6.3924),Pull (-18.95,6.1668) (-42.34,5.9412),Pull (-42.56,2.1809) (-42.79,-1.579),Pull (-42.49,-7.821) (-42.19,-14.06),Pull (-36.32,-13.83) (-30.45,-13.61),Pull (-30.15,-6.918) (-29.85,-0.225),Pull (-27.45,-0.075) (-25.04,0.0752),Pull (-25.04,-6.542) (-25.04,-13.16),Pull (-19.25,-13.23) (-13.46,-13.31),Pull (-13.38,-6.768) (-13.31,-0.225),Pull (-10.98,-0.225) (-8.648,-0.225),Pull (-9.099,-6.618) (-9.551,-13.01),Pull (-2.406,-13.61) (4.7379,-14.21),Pull (4.6627,-7.595) (4.5875,-0.977),Pull (-19.10,-0.827) (-42.79,-0.676),Pull (-42.56,2.3313) (-42.34,5.7908)]
   |> filled lightBlue |> addOutline (solid 0.5) black
  ]

scene9 = group 
  [
  labBackground
  ,
  doctor 
  |> scale 0.7
  |> move (-50,-10)
  ,
  speechBubble
  |> scale 1
  |> move (10,33)
  ,
  text "Your task is almost complete! All the Hospitals  "
    |> filled black |> scale 0.4
    |> move (-40,45)
    ,
  text "around the world are full! And, your already starting  "
    |> filled black |> scale 0.4
    |> move (-40,40)
    ,
  text "to wheeze! Better hurry picking and learning about "
    |> filled black |> scale 0.4
    |> move (-40,35)
    ,
  text "the next ingredient! Is it Sugar or Water?"
    |> filled black |> scale 0.4
    |> move (-40,30)
  ]
  
waterDrop = group
  [
    curve (-8.191,29.177) [Pull (-26.72,6.2853) (-36.17,-23.28),Pull (-36.44,-39.91) (-24.39,-49.97),Pull (-8.524,-60.16) (6.9031,-50.71),Pull (16.797,-44.68) (19.052,-32.85),Pull (21.736,-23.37) (17.580,-13.89),Pull (7.1102,9.2035) (-8.191,29.177)]
    |> filled (rgb 115 182 254) |> addOutline (solid 0.5) black |> scale 0.5 |> move (-20,10)
  ]
  
sugarCrystal = group
  [
    curve (-23.27,23.496) [Pull (-8.391,23.496) (6.4895,23.496),Pull (13.202,17.006) (19.916,10.517),Pull (17.454,-0.447) (14.993,-11.41),Pull (-4.587,-11.30) (-24.16,-11.18),Pull (-30.32,-2.685) (-36.47,5.8181),Pull (-31.10,14.321) (-23.27,23.496)]
    |> filled gray |> addOutline (solid 0.5) black |> scale 0.6 |> move (30,0)
  ]

speechBubble = group
  [
    curve (-46.09,-21.48) [Pull (-45.31,-17.56) (-44.53,-13.65),Pull (-46.25,-9.321) (-50.57,-7.832),Pull (-59.02,-3.926) (-59.07,5.8181),Pull (-57.95,17.797) (-45.42,23.496),Pull (-26.74,28.333) (-8.055,29.090),Pull (12.419,28.867) (32.895,28.643),Pull (46.869,26.045) (52.363,17.006),Pull (56.087,11.188) (52.811,5.3706),Pull (48.903,-0.733) (35.356,-3.356),Pull (20.528,-7.525) (3.5804,-9.174),Pull (-9.386,-10.75) (-23.27,-11.41),Pull (-31.32,-12.45) (-37.14,-16.78),Pull (-41.06,-19.02) (-46.09,-21.48)]
    |> filled white |> addOutline (solid 1) black
  ]

labBackground = group
 [
 rect 30 5
  |> filled (rgb 194 222 236)
  |> scale 100
  |> makeTransparent 1,
 
  curve (-95.84,-46.43) [Pull (0,-46.43) (95.843,-46.43),Pull (95.843,-55.05) (95.843,-63.68),Pull (0,-63.68) (-95.84,-63.68),Pull (-95.84,-54.58) (-95.84,-46.43)]  
  |> filled (rgb 101 127 150)
  |> move (0, -0.5)
  |> makeTransparent 1,
 
  curve (-95.84,-43.92) [Pull (0,-44.07) (95.843,-44.23),Pull (96,-47.05) (96.156,-49.88),Pull (0.1568,-49.72) (-95.84,-49.56),Pull (-95.84,-46.74) (-95.84,-43.92)] 
  |> filled (rgb 61 98 124)
  |> makeTransparent 1,
 
 
  curve (72.627,-9.098) [Pull (83.450,-8.941) (94.274,-8.784),Pull (95.281,-8.894) (95.529,-9.725),Pull (95.529,-29.96) (95.529,-50.19),Pull (95.578,-52.00) (94.588,-51.76),Pull (83.450,-51.76) (72.313,-51.76),Pull (71.403,-51.59) (71.372,-51.13),Pull (71.372,-30.58) (71.372,-10.03),Pull (71.400,-8.968) (72.627,-9.098)]
  |> filled white
  |> makeTransparent 1,
  curve (79.843,-8.784) [Pull (78.745,-8.784) (77.647,-8.784),Pull (78.431,-7.686) (79.215,-6.588),Pull (79.840,-7.401) (80.784,-7.215),Pull (80.470,-8) (79.843,-8.784)]
  |> filled (rgb 151 176 181)
  |> makeTransparent 1,
  curve (89.254,-8.784) [Pull (88.470,-7.686) (87.686,-6.588),Pull (87.025,-7.141) (85.803,-7.215),Pull (86.274,-8) (86.745,-8.784),Pull (88,-8.784) (89.254,-8.784)]
  |> filled (rgb 151 176 181)
  |> makeTransparent 1,
  circle 7
  |> filled (rgb 151 176 181)
  |> makeTransparent 1
  |> move (83.5, -1),
  circle 5.9
  |> outlined (solid 0.35) (rgb 175 201 202)
  |> makeTransparent 1
  |> move (83.5 , -1),
  circle 5
  |> filled white
  |> makeTransparent 1
  |> move (83.5, -1),
  circle 4
  |> filled (rgb 133 183 206)
  |> makeTransparent 1
  |> move (83.5, -1),
  curve (82.980,2.1960) [Pull (81.568,0) (80.156,-2.196),Pull (79.893,-2.789) (80.470,-2.823),Pull (83.137,-2.823) (85.803,-2.823),Pull (86.618,-2.837) (86.512,-2.251),Pull (85.226,0) (83.939,2.2512),Pull (83.296,3.0312) (82.980,2.1960)]
  |> filled (rgb 254 204 2)
  |> makeTransparent 1
  |> scale 0.9
  |> move (8.5, -0.5),
  circle 1.7
  |> outlined (solid 0.2) (rgb 104 124 135)
  |> makeTransparent 1
  |> move (83.6 , -0.9),
  polygon [(42,20),(-42,22),(-24,-23),(23,-24)]
  |> filled (rgb 104 124 135)
  |> scale 0.015
  |> move (83.6, 0)
  |> makeTransparent 1,
  polygon [(-12,-28),(-36,23),(-87,21),(-48,-63)]
  |> filled (rgb 104 124 135)
  |> scale 0.0145
  |> move (83.3, -1)
  |> makeTransparent 1,
  polygon [(-53,-28),(-36,23),(22,21),(-10,-67)]
  |> filled (rgb 104 124 135)
  |> scale 0.013
  |> rotate -0.3
  |> move (84.7, -1.2)
  |> makeTransparent 1,
  circle 0.45
  |> filled (rgb 104 124 135)
  |> makeTransparent 1
  |> move (83.6 , -0.9),
  curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
  |> filled (rgb 124 125 127)
  |> makeTransparent 1,
  curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
  |> filled (rgb 124 125 127)
  |> makeTransparent 1
  |> move (0, -1),
  curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
  |> filled (rgb 124 125 127)
  |> makeTransparent 1
  |> move (0, -2),
  curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
  |> filled (rgb 124 125 127)
  |> makeTransparent 1
  |> move (11, 0),
  curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
  |> filled (rgb 124 125 127)
  |> makeTransparent 1
  |> move (11, -1),
  curve (73.254,-47.68) [Pull (78.117,-47.68) (82.980,-47.68),Pull (83.137,-48) (83.294,-48.31),Pull (78.117,-48.31) (72.941,-48.31),Pull (73.098,-48) (73.254,-47.68)]
  |> filled (rgb 124 125 127)
  |> makeTransparent 1
  |> move (11, -2),
  curve (72.627,-10.35) [Pull (72.627,-28.39) (72.627,-46.43),Pull (83.450,-28.39) (94.274,-10.35),Pull (83.450,-10.35) (72.627,-10.35)]  
  |> filled (rgb 203 231 237)
  |> makeTransparent 1,
  curve (94.274,-10.35) [Pull (94.274,-28.39) (94.274,-46.43),Pull (83.450,-46.43) (72.627,-46.43),Pull (83.450,-28.39) (94.274,-10.35)]
  |> filled (rgb 184 217 224)
  |> makeTransparent 1,
  curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
  |> outlined (solid 0.8) white
  |> move (0, 0.5)
  |> makeTransparent 1,
  curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
  |> outlined (solid 0.8) white
  |> move (0, -8)
  |> makeTransparent 1,
  curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
  |> outlined (solid 0.8) white
  |> move (0, -16)
  |> makeTransparent 1,
  curve (93.333,-19.13) [Pull (83.294,-19.13) (73.254,-19.13)]
  |> outlined (solid 0.8) white
  |> move (0, -24.5)
  |> makeTransparent 1,
  curve (78.588,-16.31) [Pull (78.745,-17.09) (78.901,-17.88),Pull (77.176,-18.64) (75.450,-17.88),Pull (75.764,-16.94) (76.078,-16),Pull (77.333,-16.15) (78.588,-16.31)]
  |> filled (rgb 122 186 209)
  |> makeTransparent 1,
  curve (76.705,-12.86) [Pull (76.705,-13.49) (76.705,-14.11),Pull (75.921,-16) (75.137,-17.88),Pull (77.176,-18.79) (79.215,-18.19),Pull (78.745,-16.15) (78.274,-14.11),Pull (78.274,-13.49) (78.274,-12.86)]
  |> outlined (solid 0.3) white
  |> makeTransparent 1,
  roundedRect 30 5 5
  |> filled white
  |> scale 0.063
  |> move (77.5, -12.7),
  curve (87.686,-41.41) [Pull (89.568,-41.41) (91.450,-41.41),Pull (91.450,-42.35) (91.450,-43.29),Pull (89.411,-43.13) (87.372,-42.98),Pull (87.529,-42.19) (87.686,-41.41)]  
  |> filled (rgb 122 186 209)
  |> makeTransparent 1,
  ---
  curve (87.686,-39.52) [Pull (87.686,-41.41) (87.686,-43.29),Pull (89.725,-43.29) (91.764,-43.29),Pull (91.607,-41.41) (91.450,-39.52)]
  |> outlined (solid 0.3) white
  |> makeTransparent 1,
  curve (87.372,-39.21) [Pull (89.568,-39.21) (91.764,-39.21)]
  |> outlined (solid 0.5) white
  |> makeTransparent 1,
  curve (85.176,-30.74) [Pull (85.176,-32.78) (85.176,-34.82)]
  |> outlined (solid 0.5) white
  |> makeTransparent 1,
  curve (91.450,-30.74) [Pull (91.450,-32.94) (91.450,-35.13)]
  |> outlined (solid 0.5) white
  |> makeTransparent 1,
  curve (86.117,-33.25) [Pull (86.588,-33.25) (87.058,-33.25),Pull (87.058,-33.88) (87.058,-34.50),Pull (86.588,-34.50) (86.117,-34.50),Pull (86.117,-33.88) (86.117,-33.25)]
  |> filled (rgb 122 186 209)
  |> move (0, -0.5)
  |> makeTransparent 1,
  curve (88,-32.94) [Pull (88.313,-32.94) (88.627,-32.94),Pull (88.627,-33.88) (88.627,-34.82),Pull (88.313,-34.82) (88,-34.82),Pull (87.843,-33.88) (88,-32.94),Pull (2.1960,-32.62) (-83.60,-32.31)]
  |> filled (rgb 122 186 209)
  |> move (0.1, 0)
  |> makeTransparent 1,
  curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
  |> outlined (solid 0.25) white
  |> makeTransparent 1,
  curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
  |> outlined (solid 0.25) white
  |> move (1.8, 0)
  |> makeTransparent 1,
  curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
  |> outlined (solid 0.25) white
  |> move (3.6, 0)
  |> makeTransparent 1,
  curve (85.176,-31.68) [Pull (88.313,-31.68) (91.450,-31.68)]
  |> outlined (solid 0.3) white
  |> makeTransparent 1,
 
  curve (69.176,-51.45) [Pull (69.333,-42.50) (69.490,-33.56),Pull (19.764,-33.41) (-29.96,-33.25),Pull (-29.96,-42.35) (-29.96,-51.45),Pull (19.607,-51.29) (69.176,-51.45)]
  |> filled (rgb 99 152 209)
  |> makeTransparent 1,
 
 
  curve (69.490,-33.56) [Pull (69.490,-32.31) (69.490,-31.05),Pull (19.764,-31.05) (-29.96,-31.05),Pull (-29.96,-32.31) (-29.96,-33.56),Pull (19.764,-33.56) (69.490,-33.56)]  
  |> filled (rgb 77 129 170)
  |> makeTransparent 1,
 
 
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> makeTransparent 1,
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (9, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (2.8, 0)
  |> makeTransparent 1,
 
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-31.3, 0)
  |> makeTransparent 1,
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-22.3, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (-31.3, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (-28.5, 0)
  |> makeTransparent 1,
 
 
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-49, 0)
  |> makeTransparent 1,
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-40, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (-49, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (-46.2, 0)
  |> makeTransparent 1,
 
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-80.3, 0)
  |> makeTransparent 1,
  curve (50.980,-34.50) [Pull (55.058,-34.50) (59.137,-34.50),Pull (59.137,-42.35) (59.137,-50.19),Pull (55.058,-50.19) (50.980,-50.19),Pull (50.980,-42.35) (50.980,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-71.3, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (-80.3, 0)
  |> makeTransparent 1,
  curve (57.568,-39.84) [Pull (58.039,-39.84) (58.509,-39.84),Pull (58.509,-38.27) (58.509,-36.70),Pull (58.039,-36.70) (57.568,-36.70),Pull (57.568,-38.27) (57.568,-39.84)]
  |> filled (rgb 36 103 156)
  |> move (-77.5, 0)
  |> makeTransparent 1,
 
 
 
  curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
  |> filled (rgb 168 225 232)
  |> makeTransparent 1,
  curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
  |> filled (rgb 36 103 156)
  |> makeTransparent 1,  
  curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
  |> filled (rgb 168 225 232)
  |> makeTransparent 1
  |> move (0, -5.5),
  curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
  |> filled (rgb 36 103 156)
  |> move (0, -5.5)
  |> makeTransparent 1,  
  curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (0, -11)
  |> makeTransparent 1,
  curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
  |> filled (rgb 36 103 156)
  |> move (0, -11)
  |> makeTransparent 1,
 
  curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-49, 0)
  |> makeTransparent 1,
  curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
  |> filled (rgb 36 103 156)
  |> move (-49, 0)
  |> makeTransparent 1,  
  curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
  |> filled (rgb 168 225 232)
  |> makeTransparent 1
  |> move (-49, -5.5),
  curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
  |> filled (rgb 36 103 156)
  |> move (-49, -5.5)
  |> makeTransparent 1,  
  curve (37.490,-34.50) [Pull (43.921,-34.50) (50.352,-34.50),Pull (50.352,-36.86) (50.352,-39.21),Pull (43.921,-39.21) (37.490,-39.21),Pull (37.490,-37.01) (37.490,-34.50)]
  |> filled (rgb 168 225 232)
  |> move (-49, -11)
  |> makeTransparent 1,
  curve (42.196,-36.07) [Pull (43.921,-36.07) (45.647,-36.07),Pull (45.647,-35.76) (45.647,-35.45),Pull (43.921,-35.45) (42.196,-35.45),Pull (42.196,-35.76) (42.196,-36.07)]
  |> filled (rgb 36 103 156)
  |> move (-49, -11)
  |> makeTransparent 1,
 
 
 
  curve (50.352,-16.31) [Pull (50.352,-17.41) (50.352,-18.50),Pull (59.764,-18.50) (69.176,-18.50),Pull (69.176,-17.41) (69.176,-16.31),Pull (59.764,-16.31) (50.352,-16.31)]
  |> filled (rgb 76 129 171)
  |> makeTransparent 1,
 
 
  curve (85.176,-30.74) [Pull (85.176,-32.78) (85.176,-34.82)]
  |> outlined (solid 0.5) white
  |> move (-60, 3.7)
  |> makeTransparent 1,
  curve (91.450,-30.74) [Pull (91.450,-32.94) (91.450,-35.13)]
  |> outlined (solid 0.5) white
  |> move (-60, 3.7)
  |> makeTransparent 1,
  curve (86.117,-33.25) [Pull (86.588,-33.25) (87.058,-33.25),Pull (87.058,-33.88) (87.058,-34.50),Pull (86.588,-34.50) (86.117,-34.50),Pull (86.117,-33.88) (86.117,-33.25)]
  |> filled (rgb 122 186 209)
  |> move (-60, 3.2)
  |> makeTransparent 1,
  curve (88,-32.94) [Pull (88.313,-32.94) (88.627,-32.94),Pull (88.627,-33.88) (88.627,-34.82),Pull (88.313,-34.82) (88,-34.82),Pull (87.843,-33.88) (88,-32.94),Pull (2.1960,-32.62) (-83.60,-32.31)]
  |> filled (rgb 122 186 209)
  |> move (-59.9, 3.7)
  |> makeTransparent 1,
 
 
  curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
  |> outlined (solid 0.25) white
  |> move (-60, 3.7)
  |> makeTransparent 1,
  curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
  |> outlined (solid 0.25) white
  |> move (-58.2, 3.7)
  |> makeTransparent 1,
  curve (86.117,-29.80) [Pull (86.588,-29.80) (87.058,-29.80),Pull (87.058,-32.31) (87.058,-34.82),Pull (86.588,-35.08) (86.117,-34.82),Pull (86.117,-32.31) (86.117,-29.80)]
  |> outlined (solid 0.25) white
  |> move (-56.4, 3.7)
  |> makeTransparent 1,
  curve (85.176,-31.68) [Pull (88.313,-31.68) (91.450,-31.68)]
  |> outlined (solid 0.3) white
  |> move (-60, 3.7)
  |> makeTransparent 1,
 
 
 
  curve (45.019,-29.49) [Pull (41.568,-29.49) (38.117,-29.49),Pull (38.117,-30.27) (38.117,-31.05),Pull (41.568,-31.05) (45.019,-31.05),Pull (45.019,-30.27) (45.019,-29.49)]  
  |> filled (rgb 117 133 141)
  |> move (-0.15, 0)
  |> makeTransparent 1,
 
  curve (37.490,-29.49) [Pull (41.411,-29.49) (45.333,-29.49),Pull (45.333,-29.17) (45.333,-28.86),Pull (41.411,-28.86) (37.490,-28.86),Pull (37.490,-29.17) (37.490,-29.49)]
  |> filled (rgb 115 116 120)
  |> makeTransparent 1,
 
 
  curve (40.313,-28.54) [Pull (40.313,-26.35) (40.313,-24.15),Pull (39.058,-24) (37.803,-23.84),Pull (37.647,-26.19) (37.490,-28.54),Pull (38.745,-28.54) (40.313,-28.54)]
  |> filled (rgb 117 133 141)
  |> move (0, -0.4)
  |> makeTransparent 1,
 
 
 
 
  curve (42.196,-24.47) [Pull (42.196,-23.68) (42.196,-22.90),Pull (40.627,-22.90) (39.058,-22.90),Pull (39.215,-23.68) (39.372,-24.47),Pull (40.784,-24.47) (42.196,-24.47)]
  |> filled (rgb 117 133 141)
  |> makeTransparent 1,
 
 
 
  curve (44.392,-25.09) [Pull (43.294,-25.09) (42.196,-25.09),Pull (42.196,-23.05) (42.196,-21.01),Pull (43.294,-21.01) (44.392,-21.01),Pull (44.392,-23.05) (44.392,-25.09)]
  |> filled (rgb 157 171 178)
  |> makeTransparent 1,
 
 
  curve (44.078,-25.72) [Pull (43.294,-25.72) (42.509,-25.72),Pull (42.509,-25.41) (42.509,-25.09),Pull (43.294,-25.09) (44.078,-25.09),Pull (44.078,-25.41) (44.078,-25.72)]
  |> filled (rgb 157 171 178)
  |> makeTransparent 1,
 
 
  curve (42.509,-26.03) [Pull (43.294,-26.03) (44.078,-26.03)]
  |> outlined (solid 0.3) (rgb 96 120 138)
  |> move (0, 0.25)
  |> makeTransparent 1,
 
 
  curve (42.823,-20.39) [Pull (43.294,-20.39) (43.764,-20.39)]
  |> outlined (solid 0.3) (rgb 157 171 178)
  |> move (0, -0.5)
  |> makeTransparent 1,
 
 
  curve (42.823,-20.70) [Pull (43.450,-20.70) (44.078,-20.70)]
  |> outlined (solid 0.3) (rgb 96 120 138)
  |> move (-0.15, 0.1)
  |> makeTransparent 1,
 
  circle 10
  |> filled (rgb 91 103 109)
  |> scale 0.14
  |> move (39, -24)
  |> makeTransparent 1,
 
   circle 10
  |> filled (rgb 91 103 109)
  |> scale 0.068
  |> move (42.2, -22.7)
  |> makeTransparent 1,
 
 
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> makeTransparent 1,
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (2.6, 0)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (2.6, 0)
  |> makeTransparent 1,
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (5.2, 0)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (5.2, 0)
  |> makeTransparent 1,
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (7.8, 0)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (7.8, 0)
  |> makeTransparent 1,
 
 
 
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (0, 14.7)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (0, 14.7)
  |> makeTransparent 1,
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (2.6, 14.7)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (2.6, 14.7)
  |> makeTransparent 1,
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (5.2, 14.7)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (5.2, 14.7)
  |> makeTransparent 1,
  curve (57.254,-21.33) [Pull (58.352,-21.33) (59.450,-21.33),Pull (59.450,-26.19) (59.450,-31.05),Pull (58.352,-31.05) (57.254,-31.05),Pull (57.254,-26.19) (57.254,-21.33)]
  |> filled white
  |> move (7.8, 14.7)
  |> makeTransparent 1,
  curve (57.254,-23.84) [Pull (58.352,-23.84) (59.450,-23.84)]
  |> outlined (solid 0.5) (rgb 155 170 176)
  |> move (7.8, 14.7)
  |> makeTransparent 1,
 
 
  curve (-56,-51.13) [Pull (-56,-42.66) (-56,-34.19),Pull (-72.94,-34.19) (-89.88,-34.19),Pull (-89.88,-42.66) (-89.88,-51.13),Pull (-72.94,-51.13) (-56,-51.13)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
  curve (-56,-51.13) [Pull (-56,-42.66) (-56,-34.19),Pull (-72.94,-34.19) (-89.88,-34.19),Pull (-89.88,-42.66) (-89.88,-51.13),Pull (-72.94,-51.13) (-56,-51.13)]
  |> filled (rgb 204 204 204)
  |> makeTransparent 1,
 
 
 
 
  curve (-57.56,-35.13) [Pull (-57.56,-41.09) (-57.56,-47.05),Pull (-72.94,-47.05) (-88.31,-47.05),Pull (-88.31,-41.09) (-88.31,-35.13),Pull (-72.94,-35.13) (-57.56,-35.13)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
  curve (-72.62,-35.45) [Pull (-72.62,-41.09) (-72.62,-46.74)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
  curve (-71.37,-38.58) [Pull (-71.37,-40.94) (-71.37,-43.29)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
  curve (-71.37,-38.58) [Pull (-71.37,-40.94) (-71.37,-43.29)]
  |> outlined (solid 0.2) black
  |> move (-2.5, 0)
  |> makeTransparent 1,
 
 
 
  curve (-58.19,-32) [Pull (-72.78,-32) (-87.37,-32),Pull (-88.62,-32.94) (-89.88,-33.88),Pull (-73.09,-33.88) (-56.31,-33.88),Pull (-57.25,-33.09) (-58.19,-32)]
  |> filled white
  |> makeTransparent 1,
 
 
  curve (-58.19,-32) [Pull (-72.78,-32) (-87.37,-32),Pull (-88.62,-32.94) (-89.88,-33.88),Pull (-73.09,-33.88) (-56.31,-33.88),Pull (-57.25,-33.09) (-58.19,-32)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
  curve (-56.31,-33.88) [Pull (-55.84,-33.88) (-55.37,-33.88),Pull (-55.21,-24.62) (-55.05,-15.37),Pull (-56.78,-16.94) (-58.50,-18.50),Pull (-58.35,-25.25) (-58.19,-32),Pull (-57.25,-32.94) (-56.31,-33.88)]
  |> filled (rgb 204 204 204)
  |> makeTransparent 1,
 
  curve (-56.31,-33.88) [Pull (-55.84,-33.88) (-55.37,-33.88),Pull (-55.21,-24.62) (-55.05,-15.37),Pull (-56.78,-16.94) (-58.50,-18.50),Pull (-58.35,-25.25) (-58.19,-32),Pull (-57.25,-32.94) (-56.31,-33.88)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
  curve (-89.88,-34.19) [Pull (-88.78,-33.09) (-87.68,-32),Pull (-87.68,-25.25) (-87.68,-18.50),Pull (-89.25,-17.09) (-90.82,-15.68),Pull (-90.82,-24.94) (-90.82,-34.19),Pull (-90.35,-34.19) (-89.88,-34.19)]
  |> filled (rgb 153 153 153)
  |> makeTransparent 1,
 
  curve (-89.88,-34.19) [Pull (-88.78,-33.09) (-87.68,-32),Pull (-87.68,-25.25) (-87.68,-18.50),Pull (-89.25,-17.09) (-90.82,-15.68),Pull (-90.82,-24.94) (-90.82,-34.19),Pull (-90.35,-34.19) (-89.88,-34.19)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
  curve (-58.50,-18.50) [Pull (-56.78,-16.94) (-55.05,-15.37),Pull (-72.94,-15.37) (-90.82,-15.37),Pull (-89.25,-16.94) (-87.68,-18.50),Pull (-73.09,-18.50) (-58.50,-18.50)]
  |> filled (rgb 155 155 155)
  |> makeTransparent 1,
 
  curve (-58.50,-18.50) [Pull (-56.78,-16.94) (-55.05,-15.37),Pull (-72.94,-15.37) (-90.82,-15.37),Pull (-89.25,-16.94) (-87.68,-18.50),Pull (-73.09,-18.50) (-58.50,-18.50)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
 
  curve (-91.13,-4.078) [Pull (-91.13,-9.568) (-91.13,-15.05),Pull (-73.09,-15.05) (-55.05,-15.05),Pull (-55.21,-9.568) (-55.37,-4.078),Pull (-73.25,-4.078) (-91.13,-4.078)]
  |> filled (rgb 204 204 204)
  |> makeTransparent 1,
 
  curve (-91.13,-4.078) [Pull (-91.13,-9.568) (-91.13,-15.05),Pull (-73.09,-15.05) (-55.05,-15.05),Pull (-55.21,-9.568) (-55.37,-4.078),Pull (-73.25,-4.078) (-91.13,-4.078)]
  |> outlined (solid 0.2) black
  |> move (0, -0.1)
  |> makeTransparent 1,
 
 
  curve (-89.56,-10.03) [Pull (-89.56,-11.92) (-89.56,-13.80),Pull (-81.72,-13.80) (-73.88,-13.80),Pull (-73.88,-11.92) (-73.88,-10.03),Pull (-81.56,-10.03) (-89.56,-10.03)]
  |> filled (rgb 82 82 82)
  |> makeTransparent 1,
 
  curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
  |> outlined (solid 0.4) (rgb 154 154 154)
  |> makeTransparent 1,
  curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
  curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
  |> outlined (solid 0.4) (rgb 154 154 154)
  |> makeTransparent 1,
  curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
  curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
  |> outlined (solid 0.4) (rgb 154 154 154)
  |> makeTransparent 1,
  curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
 
  curve (-89.56,-10.03) [Pull (-89.56,-11.92) (-89.56,-13.80),Pull (-81.72,-13.80) (-73.88,-13.80),Pull (-73.88,-11.92) (-73.88,-10.03),Pull (-81.56,-10.03) (-89.56,-10.03)]
  |> filled (rgb 82 82 82)
  |> move (17, 0)
  |> makeTransparent 1,
 
  curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
  |> outlined (solid 0.4) (rgb 154 154 154)
  |> move (17, 0)
  |> makeTransparent 1,
  curve (-73.88,-10.98) [Pull (-81.56,-10.98) (-89.25,-10.98)]
  |> outlined (solid 0.2) black
  |> move (17, 0)
  |> makeTransparent 1,
 
  curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
  |> outlined (solid 0.4) (rgb 154 154 154)
  |> move (17, 0)
  |> makeTransparent 1,
  curve (-73.88,-11.92) [Pull (-81.56,-11.92) (-89.25,-11.92)]
  |> outlined (solid 0.2) black
  |> move (17, 0)
  |> makeTransparent 1,
 
  curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
  |> outlined (solid 0.4) (rgb 154 154 154)
  |> move (17, 0)
  |> makeTransparent 1,
  curve (-73.88,-13.17) [Pull (-81.56,-13.17) (-89.25,-13.17)]
  |> outlined (solid 0.2) black
  |> move (17, 0)
  |> makeTransparent 1,
 
 
 
  curve (-58.50,-25.41) [Pull (-73.09,-25.41) (-87.68,-25.41),Pull (-87.68,-21.96) (-87.68,-18.50),Pull (-73.09,-18.50) (-58.50,-18.50),Pull (-58.50,-21.96) (-58.50,-25.41)]  |> filled (rgb 204 204 204)
  |> makeTransparent 1,
 
 
  curve (-87.68,-25.41) [Pull (-72.94,-25.41) (-58.19,-25.41),Pull (-58.19,-26.19) (-58.19,-26.98),Pull (-72.94,-26.98) (-87.68,-26.98),Pull (-87.68,-26.19) (-87.68,-25.41)]
  |> filled (rgb 204 204 204)
  |> makeTransparent 1,
 
 
 
  curve (-58.50,-26.98) [Pull (-73.09,-26.98) (-87.68,-26.98),Pull (-87.68,-29.49) (-87.68,-32),Pull (-72.94,-32) (-58.19,-32),Pull (-58.35,-29.33) (-58.50,-26.98)]
  |> filled (rgb 152 152 152)
  |> makeTransparent 1,
 
  curve (-87.68,-25.41) [Pull (-72.94,-25.41) (-58.19,-25.41),Pull (-58.19,-26.19) (-58.19,-26.98),Pull (-72.94,-26.98) (-87.68,-26.98),Pull (-87.68,-26.19) (-87.68,-25.41)]
  |> outlined (solid 0.2) black
  |> makeTransparent 1,
 
 
 
  curve (-48.78,-40.47) [Pull (-48.51,-39.99) (-47.52,-40.15),Pull (-44.39,-40) (-41.25,-39.84),Pull (-40.54,-39.99) (-40.31,-40.47),Pull (-40.31,-40.78) (-40.31,-41.09),Pull (-40.90,-41.37) (-41.25,-41.41),Pull (-44.70,-41.41) (-48.15,-41.41),Pull (-48.76,-41.37) (-49.09,-41.09),Pull (-48.94,-40.62) (-48.78,-40.47)]
  |> filled (rgb 58 66 87)
  |> makeTransparent 1,
 
  curve (-48.15,-49.25) [Pull (-48.18,-50.12) (-47.21,-50.19),Pull (-44.54,-50.35) (-41.88,-50.50),Pull (-40.91,-50.45) (-40.94,-49.56),Pull (-40.62,-45.64) (-40.31,-41.72),Pull (-44.70,-41.72) (-49.09,-41.72),Pull (-48.62,-45.49) (-48.15,-49.25)]
  |> filled (rgb 45 61 118)
  |> makeTransparent 1,
 
 
  curve (-48.78,-40.47) [Pull (-48.51,-39.99) (-47.52,-40.15),Pull (-44.39,-40) (-41.25,-39.84),Pull (-40.54,-39.99) (-40.31,-40.47),Pull (-40.31,-40.78) (-40.31,-41.09),Pull (-40.90,-41.37) (-41.25,-41.41),Pull (-44.70,-41.41) (-48.15,-41.41),Pull (-48.76,-41.37) (-49.09,-41.09),Pull (-48.94,-40.62) (-48.78,-40.47)]
  |> outlined (solid 0.9) (rgb 45 56 126)
  |> makeTransparent 1
 
 ]
partyHat model=group 
 [
 curve (-28.36,-57.61) [Pull (18.792,-57.97) (65.950,-58.32),Pull (42.903,-5.141) (19.855,48.044),Pull (-4.254,-4.963) (-28.36,-57.97)]
 |> filled pink
 ,
 curve (36.698,-57.97) [Pull (40.066,-57.97) (43.434,-57.97),Pull (51.767,-52.12) (60.099,-46.27),Pull (59.036,-44.49) (57.972,-42.72),Pull (47.512,-50.34) (37.052,-57.97)]
 |> filled orange 
 ,
 curve (12.232,-57.97) [Pull (15.778,-57.97) (19.324,-57.97),Pull (36.875,-45.73) (54.426,-33.50),Pull (53.362,-31.02) (52.299,-28.54),Pull (32.443,-43.25) (12.587,-57.97)]
 |> filled orange 
 ,
 curve (-11.87,-57.97) [Pull (-8.332,-58.32) (-4.786,-58.68),Pull (21.628,-39.53) (48.044,-20.38),Pull (46.803,-18.26) (45.562,-16.13),Pull (17.196,-37.05) (-11.16,-57.97)] 
 |> filled orange 
 ,
 curve (-27.12,-55.49) [Pull (7.2686,-30.84) (41.662,-6.204),Pull (41.130,-4.432) (40.598,-2.659),Pull (8.6869,-25.70) (-23.22,-48.75),Pull (-25.35,-52.12) (-27.47,-55.49)]
 |> filled orange 
 ,
 curve (-12.58,-22.16) [Pull (-14.53,-26.23) (-16.48,-30.31),Pull (9.5734,-11.87) (35.634,6.5595),Pull (34.747,8.3324) (33.861,10.105),Pull (10.459,-6.382) (-12.94,-22.86)]
 |> filled orange 
 ,
 curve (-1.595,2.3047) [Pull (-3.013,-1.240) (-4.432,-4.786),Pull (12.941,7.0914) (30.315,18.969),Pull (29.252,21.096) (28.188,23.224),Pull (13.650,12.764) (-0.886,2.3047)]
 |> filled orange 
 ,
 curve (10.814,28.542) [Pull (9.2188,24.997) (7.6232,21.451),Pull (15.778,27.124) (23.933,32.797),Pull (23.047,35.279) (22.160,37.761),Pull (16.132,33.329) (10.105,28.897)]
 |> filled orange 
 ,
 curve (17.551,41.307) [Pull (18.083,37.052) (18.614,32.797),Pull (19.501,37.407) (20.387,42.016),Pull (24.110,39.357) (27.833,36.698),Pull (24.997,40.243) (22.160,43.789),Pull (26.947,44.498) (31.734,45.207),Pull (27.124,45.916) (22.515,46.626),Pull (25.174,50.349) (27.833,54.072),Pull (24.110,51.590) (20.387,49.108),Pull (19.855,53.540) (19.324,57.972),Pull (18.260,53.362) (17.196,48.753),Pull (13.828,51.590) (10.459,54.426),Pull (12.941,50.703) (15.423,46.980),Pull (11.168,46.094) (6.9141,45.207),Pull (11.168,44.321) (15.423,43.434),Pull (12.764,39.889) (10.105,36.343),Pull (13.650,38.825) (17.196,41.307)]
 |> filled blue 
 
 ]
 
pacman model = group
 [
 wedge 30 (0.6+abs(sin(3*model.time)))
 |> filled yellow 
 ,
 circle 1
 |> filled black
 |> move (-0.1, 2)
 |> scale 8
 ]
 
myStr1 = group
  [
  text "For Phase 3, the vaccine is given to thousands of people "
  |> size 8
  |> filled black
  |> move (-90,45)
  ,
  text "and tested for efficacy and safety"
  |> size 8
  |> filled black
  |> move (-90,35)
  ]
  
ballons = group
  [
  ballon1
  ,
  ballon2
  ,
  ballon3
  ]
 
ballon1 = group
  [  oval 22.5 25
  |> filled lightPurple
  |> move (-80,25)
  ,
  triangle 5
  |> filled lightPurple
  |> rotate (degrees 90)
  |> move (-80,12)
  ,
  rect 1 50
  |> filled black
  |> move (-80,-15)
  ]
 
ballon2 = group
  [
  oval 22.5 25
  |> filled pink
  |> move (-50,20)
  ,
  triangle 5
  |> filled pink
  |> rotate (degrees 90)
  |> move (-50,7)
  ,
  rect 1 50
  |> filled black
  |> move (-50,-20)
  ]
 
ballon3 = group
  [
  oval 22.5 25
  |> filled lightYellow
  |> move (-65,40)
  ,
  triangle 5
  |> filled lightYellow
  |> rotate (degrees 90)
  |> move (-65,27)
  ,
  rect 1 50
  |> filled black
  |> move (-65,1)
  ]
  
  
myStr = group
  [
  text "Get your vaccine today so you can boogie down with us."
  |> size 8
  |> filled black
  |> move (-90,45)
  ,
  text "Waaahhooooooo!"
  |> size 8
  |> filled black
  |> move (-90,35)
  ]
