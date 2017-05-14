class CodeSchoolsController < ApplicationController
  include Carmen

  def index
    code_schools = CodeSchools.new
    @va_accepted_code_schools = code_schools.va_accepted
    @code_schools_by_state = code_schools.by_state
    @country = Country.named('United States')
  end

  def map
    code_schools = CodeSchools.new.all
    @lat_longs = []

    code_schools.each do |school| 
      if hash.key?("latitude") && hash.key?("longitude")
        @lat_longs << [hash["longitude"], hash["latitude"]]
      end
    end 
    @lat_longs
  end
end
