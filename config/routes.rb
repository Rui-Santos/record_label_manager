RecordLabelManager::Application.routes.draw do
  # get "songs/new"
  # get "songs/create"
  # get "songs/index"
  # get "songs/show"
  # get "songs/edit"
  # get "songs/update"
  # get "songs/destroy"
  # get "tracks/new"
  # get "tracks/create"
  # get "tracks/update"
  # get "tracks/edit"
  # get "tracks/destroy"
  # get "tracks/index"
  # get "tracks/show"
  # get "albums/new"
  # get "albums/create"
  # get "albums/update"
  # get "albums/edit"
  # get "albums/destroy"
  # get "albums/index"
  # get "albums/show"
  # get "bands/new"
  # get "bands/create"
  # get "bands/update"
  # get "bands/edit"
  # get "bands/destroy"
  # get "bands/index"
  # get "bands/show"

  resources :bands
  resources :albums
  resources :tracks
  resources :songs

end

#      bands GET    /bands(.:format)           bands#index
#            POST   /bands(.:format)           bands#create
#   new_band GET    /bands/new(.:format)       bands#new
#  edit_band GET    /bands/:id/edit(.:format)  bands#edit
#       band GET    /bands/:id(.:format)       bands#show
#            PUT    /bands/:id(.:format)       bands#update
#            DELETE /bands/:id(.:format)       bands#destroy

#     albums GET    /albums(.:format)          albums#index
#            POST   /albums(.:format)          albums#create
#  new_album GET    /albums/new(.:format)      albums#new
# edit_album GET    /albums/:id/edit(.:format) albums#edit
#      album GET    /albums/:id(.:format)      albums#show
#            PUT    /albums/:id(.:format)      albums#update
#            DELETE /albums/:id(.:format)      albums#destroy

#     tracks GET    /tracks(.:format)          tracks#index
#            POST   /tracks(.:format)          tracks#create
#  new_track GET    /tracks/new(.:format)      tracks#new
# edit_track GET    /tracks/:id/edit(.:format) tracks#edit
#      track GET    /tracks/:id(.:format)      tracks#show
#            PUT    /tracks/:id(.:format)      tracks#update
#            DELETE /tracks/:id(.:format)      tracks#destroy
