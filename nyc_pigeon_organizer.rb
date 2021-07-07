def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), hash |
    value.each do |inner_key, inner_value|
      inner_value.each do |name|
        if !hash[name]
          hash[name] = {}  
        end
        if !hash[name][key]
          hash[name][key] = [] 
        end
        hash[name][key] << inner_key.to_s
      end
    end
  end
end