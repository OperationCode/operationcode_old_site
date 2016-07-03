class CodeSchools
  # TODO: A great project would be to take each one of these schools
  # and instantiate them as an object (CodeSchool). We could then move
  # most of the logic in the view into that class.
  def initialize(config = Rails.root + 'config/code_schools.yml')
    raise unless File.exist? config
    @code_schools = YAML.load_file(config)
  end

  def va_accepted
    @code_schools.select { |c| c['va_accepted'] }
  end

  def by_state
    schools_by_state = {}
    @code_schools.each do |item|
      state = item['state']
      schools_by_state[state] = [] unless schools_by_state.key? state
      schools_by_state[state] << item
    end
    schools_by_state.sort.to_h
  end
end
