require "./spec_helper"

describe Ukrainian do
  describe ".transliterate" do
    it "applies case rules for Гг" do
      Ukrainian.transliterate("ЗГ").should eq("ZGH")
      Ukrainian.transliterate("Зг").should eq("Zgh")
      Ukrainian.transliterate("иГ").should eq("yH")
      Ukrainian.transliterate("иг").should eq("yh")
    end

    it "applies case rules for Єє" do
      Ukrainian.transliterate("ЄА").should eq("YEA")
      Ukrainian.transliterate("Єа").should eq("Yea")
      Ukrainian.transliterate("єа").should eq("yea")
      Ukrainian.transliterate("АЄ").should eq("AIE")
      Ukrainian.transliterate("ає").should eq("aie")
    end

    it "applies case rules for Її" do
      Ukrainian.transliterate("ЇА").should eq("YIA")
      Ukrainian.transliterate("Їа").should eq("Yia")
      Ukrainian.transliterate("їа").should eq("yia")
      Ukrainian.transliterate("АЇ").should eq("AI")
      Ukrainian.transliterate("аї").should eq("ai")
    end

    it "applies case rules for Юю" do
      Ukrainian.transliterate("ЙА").should eq("YA")
      Ukrainian.transliterate("Йа").should eq("Ya")
      Ukrainian.transliterate("АЙ").should eq("AI")
      Ukrainian.transliterate("ай").should eq("ai")
    end

    it "applies case rules for Юю" do
      Ukrainian.transliterate("ЮА").should eq("YUA")
      Ukrainian.transliterate("Юа").should eq("Yua")
      Ukrainian.transliterate("юа").should eq("yua")
      Ukrainian.transliterate("АЮ").should eq("AIU")
      Ukrainian.transliterate("аю").should eq("aiu")
    end

    it "applies case rules for Яя" do
      Ukrainian.transliterate("ЯА").should eq("YAA")
      Ukrainian.transliterate("Яа").should eq("Yaa")
      Ukrainian.transliterate("яа").should eq("yaa")
      Ukrainian.transliterate("АЯ").should eq("AIA")
      Ukrainian.transliterate("ая").should eq("aia")
    end

    it "" do
      Ukrainian.transliterate("ЗСУ").should eq("ZSU")
    end

    it "transliterates Аа" do
      Ukrainian.transliterate("Алушта").should eq("Alushta")
      Ukrainian.transliterate("Андрій").should eq("Andrii")
    end

    it "transliterates Бб" do
      Ukrainian.transliterate("Борщагівка").should eq("Borshchahivka")
      Ukrainian.transliterate("Борисенко").should eq("Borysenko")
    end

    it "transliterates Вв" do
      Ukrainian.transliterate("Вишгород").should eq("Vyshhorod")
      Ukrainian.transliterate("Володимир").should eq("Volodymyr")
    end

    it "transliterates Гг (after 'з', as in 'зг')" do
      Ukrainian.transliterate("Згорани").should eq("Zghorany")
    end

    it "transliterates Гг (elsewhere)" do
      Ukrainian.transliterate("Гадяч").should eq("Hadiach")
      Ukrainian.transliterate("Богдан").should eq("Bohdan")
    end

    it "transliterates Ґґ" do
      Ukrainian.transliterate("Ґалаґан").should eq("Galagan")
      Ukrainian.transliterate("Ґорґани").should eq("Gorgany")
    end

    it "transliterates Дд" do
      Ukrainian.transliterate("Донецьк").should eq("Donetsk")
      Ukrainian.transliterate("Дмитро").should eq("Dmytro")
      Ukrainian.transliterate("Дон").should eq("Don")
    end

    it "transliterates Ее" do
      Ukrainian.transliterate("Рівне").should eq("Rivne")
      Ukrainian.transliterate("Олег").should eq("Oleh")
      Ukrainian.transliterate("Есмань").should eq("Esman")
    end

    it "transliterates Єє (word-initially)" do
      Ukrainian.transliterate("Єнакієве").should eq("Yenakiieve")
    end

    it "transliterates Єє (elsewherre)" do
      Ukrainian.transliterate("Гаєвич").should eq("Haievych")
      Ukrainian.transliterate("Короп'є").should eq("Koropie")
      Ukrainian.transliterate("Наєнко").should eq("Naienko")
    end

    it "transliterates Жж" do
      Ukrainian.transliterate("Житомир").should eq("Zhytomyr")
      Ukrainian.transliterate("Жанна").should eq("Zhanna")
      Ukrainian.transliterate("Жежелів").should eq("Zhezheliv")
      Ukrainian.transliterate("Запоріжжя").should eq("Zaporizhzhia")
    end

    it "transliterates Зз" do
      Ukrainian.transliterate("Закарпаття").should eq("Zakarpattia")
      Ukrainian.transliterate("Казимирчук").should eq("Kazymyrchuk")
    end

    it "transliterates Ии" do
      Ukrainian.transliterate("Медвин").should eq("Medvyn")
      Ukrainian.transliterate("Михайленко").should eq("Mykhailenko")
    end

    it "transliterates Іі" do
      Ukrainian.transliterate("Іванків").should eq("Ivankiv")
      Ukrainian.transliterate("Іващенко").should eq("Ivashchenko")
      Ukrainian.transliterate("Іршава").should eq("Irshava")
    end

    it "transliterates Її (word-initially)" do
      Ukrainian.transliterate("Їжакевич").should eq("Yizhakevych")
    end

    it "transliterates Її (elsewhere)" do
      Ukrainian.transliterate("Кадіївка").should eq("Kadiivka")
      Ukrainian.transliterate("Мар'їне").should eq("Marine")
    end

    it "transliterates Йй (word-initially)" do
      Ukrainian.transliterate("Йосипівка").should eq("Yosypivka")
    end

    it "transliterates Йй (elsewhere)" do
      Ukrainian.transliterate("Стрий").should eq("Stryi")
      Ukrainian.transliterate("Олексій").should eq("Oleksii")
    end

    it "transliterates Кк" do
      Ukrainian.transliterate("Київ").should eq("Kyiv")
      Ukrainian.transliterate("Коваленко").should eq("Kovalenko")
    end

    it "transliterates Лл" do
      Ukrainian.transliterate("Лебедин").should eq("Lebedyn")
      Ukrainian.transliterate("Леонід").should eq("Leonid")
    end

    it "transliterates Мм" do
      Ukrainian.transliterate("Миколаїв").should eq("Mykolaiv")
      Ukrainian.transliterate("Маринич").should eq("Marynych")
    end

    it "transliterates Нн" do
      Ukrainian.transliterate("Ніжин").should eq("Nizhyn")
      Ukrainian.transliterate("Наталія").should eq("Nataliia")
    end

    it "transliterates Оо" do
      Ukrainian.transliterate("Одеса").should eq("Odesa")
      Ukrainian.transliterate("Онищенко").should eq("Onyshchenko")
    end

    it "transliterates Пп" do
      Ukrainian.transliterate("Полтава").should eq("Poltava")
      Ukrainian.transliterate("Петро").should eq("Petro")
    end

    it "transliterates Рр" do
      Ukrainian.transliterate("Решетилівка").should eq("Reshetylivka")
      Ukrainian.transliterate("Рибчинський").should eq("Rybchynskyi")
      Ukrainian.transliterate("Ромни").should eq("Romny")
    end

    it "transliterates Сс" do
      Ukrainian.transliterate("Суми").should eq("Sumy")
      Ukrainian.transliterate("Соломія").should eq("Solomiia")
    end

    it "transliterates Тт" do
      Ukrainian.transliterate("Тернопіль").should eq("Ternopil")
      Ukrainian.transliterate("Троць").should eq("Trots")
      Ukrainian.transliterate("Тетерів").should eq("Teteriv")
    end

    it "transliterates Уу" do
      Ukrainian.transliterate("Ужгород").should eq("Uzhhorod")
      Ukrainian.transliterate("Уляна").should eq("Uliana")
    end

    it "transliterates Фф" do
      Ukrainian.transliterate("Фастів").should eq("Fastiv")
      Ukrainian.transliterate("Філіпчук").should eq("Filipchuk")
    end

    it "transliterates Хх" do
      Ukrainian.transliterate("Харків").should eq("Kharkiv")
      Ukrainian.transliterate("Христина").should eq("Khrystyna")
    end

    it "transliterates Цц" do
      Ukrainian.transliterate("Біла Церква").should eq("Bila Tserkva")
      Ukrainian.transliterate("Стеценко").should eq("Stetsenko")
    end

    it "transliterates Чч" do
      Ukrainian.transliterate("Чернівці").should eq("Chernivtsi")
      Ukrainian.transliterate("Шевченко").should eq("Shevchenko")
    end

    it "transliterates Шш" do
      Ukrainian.transliterate("Шостка").should eq("Shostka")
      Ukrainian.transliterate("Кишеньки").should eq("Kyshenky")
    end

    it "transliterates Щщ" do
      Ukrainian.transliterate("Щербухи").should eq("Shcherbukhy")
      Ukrainian.transliterate("Гоща").should eq("Hoshcha")
      Ukrainian.transliterate("Гаращенко").should eq("Harashchenko")
    end

    it "transliterates Ьь" do
      Ukrainian.transliterate("Київська Русь").should eq("Kyivska Rus")
    end

    it "transliterates Юю (word-initially)" do
      Ukrainian.transliterate("Юрій").should eq("Yurii")
    end

    it "transliterates Юю (elsewhere)" do
      Ukrainian.transliterate("Крюківка").should eq("Kriukivka")
    end

    it "transliterates Яя (word-initially)" do
      Ukrainian.transliterate("Яготин").should eq("Yahotyn")
      Ukrainian.transliterate("Ярошенко").should eq("Yaroshenko")
    end

    it "transliterates Яя (elsewhere)" do
      Ukrainian.transliterate("Ічня").should eq("Ichnia")
      Ukrainian.transliterate("Костянтин").should eq("Kostiantyn")
      Ukrainian.transliterate("Знам'янка").should eq("Znamianka")
      Ukrainian.transliterate("Феодосія").should eq("Feodosiia")
    end

    it "transliterates '" do
      Ukrainian.transliterate("Знам'янка").should eq("Znamianka")
      Ukrainian.transliterate("Знамʼянка").should eq("Znamianka")
    end
  end
end
