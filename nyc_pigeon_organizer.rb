# require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, hash|
    hash.each do |k, arr|
      arr.each do |name|
        if !pigeon_list.include?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].include?(key)
          pigeon_list[name][key] = []
        end
        pigeon_list[name][key] << k.to_s
      end
    end
  end



  # binding.pry
  return pigeon_list
end
