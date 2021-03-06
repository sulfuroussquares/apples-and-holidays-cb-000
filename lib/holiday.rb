require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |key, value|
    if (key == :winter)
      value.each do |data, attribute|
      attribute.push(supply)
      end #end inner loop
    end #endif
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash.each do |key, value|
  value.each do |data, attribute|
    if (data == :memorial_day)
      attribute.push(supply)
    end #endif
  end #end inner loop
end #end outer loop

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash.each do |key, value|
  if (key == season)
    holiday_hash[season][holiday_name] = supply_array
  end #endif
end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
holiday_hash.each do |key, value|
  if (key == :winter)
    value.each do |data, attribute|
      winter_supplies.push(attribute)
    end # end inner loop
  end #endif
end #end outer loop
return winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |key, value|
  puts "#{key.capitalize}:"
    value.each do |data, attribute|
      puts "  #{data.to_s.split("_").map(&:capitalize).join(' ')}: #{attribute.join(", ")}"
    end #end inner loop
end #end outer loop
end

def all_holidays_with_bbq(holiday_hash)
  bbqArray = []
  holiday_hash.each do |key, value|
    value.each do |data, attribute|
      attribute.each do |supply|
        if (supply == "BBQ")
          bbqArray << data
        end #end if
      end # end inner inner loop
    end #end inner loop
  end #end outer loop
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbqArray
end
