json.extract! board, :id, :title, :abstract, :detail, :created_at, :updated_at
json.url board_url(board, format: :json)
