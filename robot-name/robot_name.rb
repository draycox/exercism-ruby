class Robot

  def initialize
    @name = ''
  end

  def name
    if @name.empty?
      @name = build_name('alpha', 2) + build_name('numeric', 3)
    else
      @name
    end
  end

  def reset
    @name = ''
    name
  end

  private

    def build_name(type,sample_size = 1)
      if type == 'alpha'
        alpha_set = ("A".."Z").to_a
        ''.tap { |result| 1.upto(sample_size) { result << alpha_set.sample} }
      elsif type == 'numeric'
        numeric_set = (0..9).to_a
        ''.tap { |result| 1.upto(sample_size) { result << numeric_set.sample.to_s} }
      else
        'No type passed'
      end
    end

end
