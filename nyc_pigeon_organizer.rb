def nyc_pigeon_organizer(data)
  new_hash = Hash.new { |h, k| h[k] = {} }
  data.each do |key, value|
    value.each do |key1, value1|
      value1.each do |bird|
        if !new_hash[bird]
          new_hash[bird][key] = [key1.to_s]
        elsif new_hash[bird] && !new_hash[bird][key]
          new_hash[bird][key] = [key1.to_s]
        else  
          new_hash[bird][key] << key1.to_s
        end
      end

    end
  end
  new_hash
end
