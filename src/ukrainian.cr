require "./ukrainian/*"

module Ukrainian
  def self.transliterate(string : String) : String
    Transliterator.transliterate(string)
  end
end
