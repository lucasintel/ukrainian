module Ukrainian
  module Transliterator
    extend self

    def transliterate(string : String) : String
      String.build do |io|
        previous_char = nil
        reader = Char::Reader.new(string)
        reader.each do |current_char|
          next_char = reader.peek_next_char
          io << transliterate_char(previous_char, current_char, next_char)
          previous_char = current_char
        end
      end
    end

    private def transliterate_char(previous_char : Char?, current_char : Char, next_char : Char)
      case current_char
      when 'А' then 'A'
      when 'а' then 'a'
      when 'Б' then 'B'
      when 'б' then 'b'
      when 'В' then 'V'
      when 'в' then 'v'
      when 'Г', 'г'
        if previous_char == 'З' || previous_char == 'з'
          if current_char.uppercase?
            "GH"
          else
            "gh"
          end
        else
          if current_char.uppercase?
            'H'
          else
            'h'
          end
        end
      when 'Ґ' then 'G'
      when 'ґ' then 'g'
      when 'Д' then 'D'
      when 'д' then 'd'
      when 'Е' then 'E'
      when 'е' then 'e'
      when 'Є', 'є'
        if previous_char.nil? || previous_char.whitespace?
          if current_char.uppercase? && next_char.uppercase?
            "YE"
          elsif current_char.uppercase?
            "Ye"
          else
            "ye"
          end
        else
          if current_char.uppercase?
            "IE"
          else
            "ie"
          end
        end
      when 'Ж' then "Zh"
      when 'ж' then "zh"
      when 'З' then 'Z'
      when 'з' then 'z'
      when 'И' then 'Y'
      when 'и' then 'y'
      when 'І' then 'I'
      when 'і' then 'i'
      when 'Ї', 'ї'
        if previous_char.nil? || previous_char.whitespace?
          if current_char.uppercase? && next_char.uppercase?
            "YI"
          elsif current_char.uppercase?
            "Yi"
          else
            "yi"
          end
        else
          if current_char.uppercase?
            'I'
          else
            'i'
          end
        end
      when 'Й', 'й'
        if previous_char.nil? || previous_char.whitespace?
          if current_char.uppercase?
            'Y'
          else
            'y'
          end
        else
          if current_char.uppercase?
            'I'
          else
            'i'
          end
        end
      when 'К' then 'K'
      when 'к' then 'k'
      when 'Л' then 'L'
      when 'л' then 'l'
      when 'М' then 'M'
      when 'м' then 'm'
      when 'Н' then 'N'
      when 'н' then 'n'
      when 'О' then 'O'
      when 'о' then 'o'
      when 'П' then 'P'
      when 'п' then 'p'
      when 'Р' then 'R'
      when 'р' then 'r'
      when 'С' then 'S'
      when 'с' then 's'
      when 'Т' then 'T'
      when 'т' then 't'
      when 'У' then 'U'
      when 'у' then 'u'
      when 'Ф' then 'F'
      when 'ф' then 'f'
      when 'Х' then "Kh"
      when 'х' then "kh"
      when 'Ц' then "Ts"
      when 'ц' then "ts"
      when 'Ч' then "Ch"
      when 'ч' then "ch"
      when 'Ш' then "Sh"
      when 'ш' then "sh"
      when 'Щ' then "Shch"
      when 'щ' then "shch"
      when 'Ь' then nil
      when 'ь' then nil
      when 'Ю', 'ю'
        if previous_char.nil? || previous_char.whitespace?
          if current_char.uppercase? && next_char.uppercase?
            "YU"
          elsif current_char.uppercase?
            "Yu"
          else
            "yu"
          end
        else
          if current_char.uppercase?
            "IU"
          else
            "iu"
          end
        end
      when 'Я', 'я'
        if previous_char.nil? || previous_char.whitespace?
          if current_char.uppercase? && next_char.uppercase?
            "YA"
          elsif current_char.uppercase?
            "Ya"
          else
            "ya"
          end
        else
          if current_char.uppercase?
            "IA"
          else
            "ia"
          end
        end
      when 'ʼ', '\'' then nil
      else
        current_char
      end
    end
  end
end
