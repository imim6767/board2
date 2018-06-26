class UsersController < ApplicationController
  def signup
  end
  
  def register
    
    unless User.find_by(username: params[:username])
      
      if params[:password] == params[:repassword]
      
        User.create(
          username: params[:username],
          password: params[:password]
          )
      @msg = "회원가입 완료"
      
      else
      @msg = "비밀번호 불일치"
      end
    
      else
        @msg = "이미 존재하는 아이디"
    end
  end


  def login
  end

  def logout
    
    session.clear
    
    redirect_to '/'
  end

  def getout
    User.find_by(session[:id]).destroy
    
    session.clear
    redirect_to '/'
  end
  
    def logining
    @msg = ""

    user = User.find_by(username: params[:username])
    
    if user and user.password == params[:password]
      
      session[:id] = user.id
      
      @msg = "로그인 되었습니다."
      
    else
      
      @msg = "아이디나 비밀번호가 맞지 않습니다."
      
    end
    
    end

end