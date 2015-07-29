class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
     @user_move = params["move"]
     @tova = @user_move.to_i
     @noah = (@tova)**2
  end

  def square_root
     @user_move = params["move"]
     @kevin = @user_move.to_i
     @jon = Math.sqrt(@kevin).round(2)

     render ("square_root.html.erb")
  end

  def random
    @user_move = params["move"]
    @user_integer = params["integer"]
    @alessandra = @user_move.to_i
    @michelle = @user_integer.to_i
    @ben = rand(@alessandra..@michelle)

    render("random.html.erb")
  end

  def payment
     @user_move = params["move"]
     @user_integer = params["integer"]
     @user_text = params["text"]
     @leah = (@user_move.to_i)/100.round(2)
     @russell = (@user_integer.to_i)
     @danya = @user_text.to_i

# leah is apr
# russell is years
# danya is princiapl

    @P = @danya
    @r = ((@leah/12)/100)
    @N = @russell*12
    @bottom = (1-(1+@r)**(-@N))
    @dylan =((@r*@P)/(@bottom)).round(1)




    render("payment.html.erb")
  end


# apr, years, princ




end
