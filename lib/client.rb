require 'httparty'

module Jawbone
  
  class Client
    
    attr_accessor :token

    API_VERSION = "1.0"
    
    include HTTParty
    
    def initialize(token)
      @token = token
    end
    
    def user
      self.class.get "https://jawbone.com/nudge/api/users/@me", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def friends
      self.class.get "https://jawbone.com/nudge/api/users/@me/friends", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def trends
      self.class.get "https://jawbone.com/nudge/api/users/@me/trends",
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def moves
      self.class.get "https://jawbone.com/nudge/api/users/@me/moves", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end    

    def move(move_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/moves/#{move_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def move_graph(move_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/moves/#{move_id}/image", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def move_intensity(move_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/moves/#{move_id}/snapshot", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def workouts
      self.class.get "https://jawbone.com/nudge/api/users/@me/workouts", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def workout(workout_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/workouts/#{workout_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def workout_graph(workout_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/workouts/#{workout_id}/image", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def workout_intensity(workout_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/workouts/#{workout_id}/snapshot", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def sleeps
      self.class.get "https://jawbone.com/nudge/api/users/@me/sleeps", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def sleep(sleep_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/sleeps/#{sleep_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def sleep_graph(sleep_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/sleeps/#{sleep_id}/image", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def sleep_intensity(sleep_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/sleeps/#{sleep_id}/snapshot", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end     
    
    def meals
      self.class.get "https://jawbone.com/nudge/api/users/@me/meals", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def meal(meal_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/meals/#{meal_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def body_events
      self.class.get "https://jawbone.com/nudge/api/users/@me/body_events", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def body_event(event_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/body_event/#{event_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def cardiac_events
      self.class.get "https://jawbone.com/nudge/api/users/@me/cardiac_events", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def cardiac_event(event_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/cardiac_event/#{event_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def generic_events
      self.class.get "https://jawbone.com/nudge/api/users/@me/generic_events", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def mood
      self.class.get "https://jawbone.com/nudge/api/users/@me/mood", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end

    def mood_event(event_id)
      self.class.get "https://jawbone.com/nudge/api/users/@me/mood/#{event_id}", 
        { :headers => { "Authorization" => "Bearer #{token}" } }.parsed_response
    end
    
  end
  
end