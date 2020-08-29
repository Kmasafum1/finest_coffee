json.array! @blogs do |blog|
  json.id blog.id
  json.title blog.title
  json.body blog.body
  json.image blog.image
  json.user_id blog.user_id
  json.user_sign_in current_user
end