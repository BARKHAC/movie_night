class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        movies_path # Or any other path you want to redirect logged-in users to
      end
end
