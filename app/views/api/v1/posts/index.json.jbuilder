# json.paging do
#   json.foo "bar"
#   json.extract! @pagy_metadata, :prev_url, :next_url, :count, :page, :next
# end
json.paging do
  json.prev @pagy_metadata[:prev_url]
  json.next @pagy_metadata[:next_url]
  json.total_records_count @pagy_metadata[:count]
end
json.data do
  json.array! @posts, partial: "api/v1/posts/post", as: :post
end
