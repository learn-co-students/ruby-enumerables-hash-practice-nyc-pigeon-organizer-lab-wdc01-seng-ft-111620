require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!

  data.each_with_object({})do |(key, value), final_data|
    value.each do |inside_key, inside_value|
      inside_value.each do |names|
        if !final_data[names]
          final_data[names] = {}
          #binding.pry
        end
        if !final_data[names][key]
          !final_data[names][key] = []
        end
        final_data[names][key] << (inside_key.to_s)
        #binding.pry

      end
    end
  end
  #binding.pry
end
