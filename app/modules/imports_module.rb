module ImportsModule
    def import_cities_csv(directory)
        CSV.foreach(directory, headers: true) do |row|
            attributes = row.to_hash
            city = City.find_by(code: attributes['code'])
            city = City.new if city.blank?
            city.attributes = attributes
            city.save!
        end
    end
end