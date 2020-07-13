module UsersHelper
  def job_title_icon(user)
    case user.profile.job_title
    when "Developer"
      "<i class='fas fa-code mr-2'></i>".html_safe
    when "Entrepreneur"
      "<i class='fas fa-user-tie mr-2'></i>".html_safe
    else
      "<i class='fas fa-hand-holding-usd mr-2'></i>".html_safe
    end
  end
end