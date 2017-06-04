class LoginTest
  def initialize(pages)
      @pages = pages
  end

  def load_login_page
      @pages.page_home.load
      @pages.page_home.visible?
      @pages.page_home.open_login  
  end

  def enter_login_details(user)
      @pages.page_home.login_enter_email(user.email)
      @pages.page_home.login_enter_password(user.password)
  end

  def submit_login_details
      user = Users.login_user
      enter_login_details(user)
      sleep(1)
  end

  def submit_login_details_no_password
      user = Users.login_user_no_password
      enter_login_details(user)
      sleep(1)
  end
  def submit_login_details_no_email
      user = Users.login_user_no_email
      enter_login_details(user)
      sleep(1)
  end
  def user_logged_in?
      @pages.page_home.logged_in?
  end

  def login_page_visible?
      @pages.page_home.login_visible?
  end

  def try_logging_in
      @pages.page_home.finish_login
  end

  
end
