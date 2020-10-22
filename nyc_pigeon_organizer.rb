require 'pry'

def nyc_pigeon_organizer(data)
    # write your code here!
    
    #pigeon_list = {}
    #hold_names = []

    #hold_names =  data[:gender][:male]
    #hold_names << data[:gender] [:female]
    #hold_names.flatten!
                
    #hold_names.each do |element|
    # pigeon_list[element] = {} 
    #end
    
    #data.keys
    #pigeon_list
    
    pigeon_list = data.each_with_object({}) do |(key, value), final_array|
                    #binding.pry
                    
                    value.each do |inner_key, names|
                        #binding.pry
                        
                        names.each do |name|
                        #binding.pry 
                        
                        if !final_array[name]
                            final_array[name] = {}
                        end
                        
                        if !final_array[name][key]
                            !final_array[name][key] = []
                        end
                        final_array[name][key] << inner_key.to_s 
                        end  
                    end
                  end

    #binding.pry
end

#binding.pry 