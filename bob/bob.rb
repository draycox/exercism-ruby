class Bob

  def hey remark
    if silence? remark
      'Fine. Be that way!'
    elsif question? remark
      'Sure.'
    elsif yelling? remark
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end

  def question? remark
    remark.end_with?('?') unless yelling?(remark)
  end

  def yelling? remark
    remark.match(/[a-zA-Z]/) && remark == remark.upcase
  end

  def silence? remark
    remark.strip.empty?
  end

end
