require_relative './pages/bbc_homepage'

class BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def sign_in_page
    BBCSignInPage.new
  end
end