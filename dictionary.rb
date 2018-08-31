class Dictionary

  def initialize
    @entries = {}
    @keywords
    @include
  end

  def add(word)
    if word.class == Hash
      @entries.merge!(word)
    elsif word.class == String
      @entries[word] = nil
    end
  end

  def entries
    @entries
  end

  def include?(string)
    a = @entries.keys
    if a.include?(string)
      return true
    else
      return false
    end
  end

  def find(string)
    @entries.select{|k, v| k.to_s.include?(string) }
  end

  def keywords
    @entries.keys.sort
  end

end
