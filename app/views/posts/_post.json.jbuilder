json.extract! post, :id, :author, :title, :body, :subject, :category, :article_id, :twitter_link, :facebook_link, :finished, :created_at, :updated_at
json.url post_url(post, format: :json)
