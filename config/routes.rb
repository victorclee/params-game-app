Rails.application.routes.draw do

  get '/params_game' => 'parameters#game_items'
  get '/guess' => 'parameters#guess'
  get '/url_segment_params/:this_is_a_key' => 'parameters#url_segment'
  get '/url_segment_params_guess/:this_is_another_key' => 'parameters#url_segment_guess'

end
