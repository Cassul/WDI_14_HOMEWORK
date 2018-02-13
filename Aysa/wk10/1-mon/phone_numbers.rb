class Phone

  def initialize (number)
    @numb = number
  end

  def number
    @numb = @numb.split("")
    str = @numb.select{|element| element[/\d+/]}.join
    if str.length == 11 && str[0].to_i == 1
      str = str.split("")
      str = str.uniq.join
    end

    if str.length > 10 || str.length < 10
      return str = "0000000000"
    end
    return str
  end

  def area_code
    @numb[0..2]
  end

  def to_s
    @numb.insert 0, "("
    @numb.insert 4, ")"
    @numb.insert 5, " "
    @numb.insert 9, "-"
    @numb
  end
end 



