class User < ActiveRecord::Base
    COORDINATE_DELTA = 0.20
    
    scope :nearby, lambda { |latitude, longitude| 
        where("latitude BETWEEN ? AND ?", latitude - COORDINATE_DELTA, latitude + COORDINATE_DELTA). 
        where("longitude BETWEEN ? AND ?", longitude - COORDINATE_DELTA, longitude + COORDINATE_DELTA). 
        limit(64) 
    }

end
