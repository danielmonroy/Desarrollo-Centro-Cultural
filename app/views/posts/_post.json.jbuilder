json.extract! post, :id, :title, :body, :embedded_video, :created_at, :updated_at
json.url post_url(post, format: :json)