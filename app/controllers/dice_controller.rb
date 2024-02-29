class DiceController < ActionController::Base

  def homepage
    
   render( {:template =>  "page_templates/homepage" }  ) 

  end

  def diceroll
    @num_dice = params.fetch("input1").to_i
    @sides = params.fetch("input2").to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

    @rolls.push(die)
    end
    render( {:template => "page_templates/dice_page"} )
  end

  


end
