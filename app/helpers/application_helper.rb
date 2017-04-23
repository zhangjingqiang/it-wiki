module ApplicationHelper
  def avatar_url
    gravatar_id = Digest::MD5::hexdigest(ENV['EMAIL']).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
