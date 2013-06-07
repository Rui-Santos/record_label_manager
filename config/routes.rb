RecordLabelManager::Application.routes.draw do

  resources :bands
  resources :albums
  resources :tracks
  resources :songs
  resources :notes, only: [:create, :destroy]

  resource :session, only: [:new, :create, :destroy]
  resources :users

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
