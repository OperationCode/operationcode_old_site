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
      if school.key?('latitude') && school.key?('longitude')
        @lat_longs << [school['longitude'], school['latitude']]
      end
    end 
    @lat_longs
  end
end
