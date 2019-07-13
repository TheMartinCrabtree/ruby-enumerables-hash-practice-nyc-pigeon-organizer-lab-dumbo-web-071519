def nyc_pigeon_organizer(data)
  # write your code here!
  return pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}
  
  
  pigeon_output = {}
  
  #setup output hash
  data.each do |general_stats, categories|
    categories.each do |value, pigeon_name|
      pigeon_name.each do |name|
        pigeon_output[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end
    end
  end
  
  keyindex = pigeon_output.keys
  
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      keyindex.each do |element|
        if bird_name === element
          pigeon_output[element][:color] << bird_color.to_s
        end 
      end 
    end 
  end
  
  data[:gender].each do |gender, type|
    type.each do |pigeon_name|
      keyindex.each do |element|
        if pigeon_name === element
          pigeon_output[element][:gender] << gender.to_s 
        end
      end
    end
  end
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      keyindex.each do |element|
        if bird_name === element
          final[element][:lives] << location
        end 
      end 
    end 
  end 
  
  return pigeon_output
end
