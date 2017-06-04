class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @video_frame = Element.new(:xpath,'//div[@id = "video"]')
    @try_now_button = Element.new(:xpath,'//button[@id="start_button"]')
    @open_login_button = Element.new(:xpath,'//button[@id="login-b"]')
    @signup_email = Element.new(:xpath,'//div[@id="signup"]/descendant::input[@type="email"]')
    @signup_password1 = Element.new(:xpath,'//div[@id="signup"]/descendant::input[@name="password1"]')
    @signup_password2 = Element.new(:xpath,'//div[@id="signup"]/descendant::input[@name="password2"]')
    @signup_project_name = Element.new(:xpath,'//div[@id="signup"]/descendant::input[@name="project_name"]')
    @signup_closecross = Element.new(:xpath,'//div[@id="signup"]/descendant::img[@class="closecross"]')
    @login_email = Element.new(:xpath,'(//div[@id="login"]/descendant::input[@type="email" and @name="login"])')
    @login_password = Element.new(:xpath,'//div[@id="login"]/descendant::input[@name="password" and @type="password"]')
    @login_button = Element.new(:xpath,'//div[@id="login"]/descendant::button[@class="button button-block innerButton"]')
    @login_title = Element.new(:xpath,'//div[@id="testDataTitle"]')
  end

  def visible?
    @video_frame.visible?
    @try_now_button.visible?
  end

  def open_signup
    @try_now_button.click
  end

  def open_login
    @open_login_button.click
  end

  def signup_enter_email(email)
     @signup_email.send_keys email 
  end

  def login_enter_email(email)
     @login_email.send_keys email 
  end

  def signup_enter_password(password)
     @signup_password1.send_keys password 
  end

  def signup_enter_password_again(password)
     @signup_password2.send_keys password
  end

  def login_enter_password(password)
     @login_password.send_keys password 
  end

  def signup_enter_passwords(password)
    signup_enter_password password
    signup_enter_password_again password
  end

  def enter_project_name(name)
    @signup_project_name.send_keys name
  end
  
  def close_signup
    @signup_closecross.click
  end
  #if you can close signup, then not signed up
  def can_close_signup?
    @signup_closecross.visible?
  end
  
  def finish_login
    @login_button.click
  end

  def login_visible?
    @login_button.visible?
  end
  def logged_in?
    @login_title.visible?
  end
  
  def load
    visit('/')
  end
end
