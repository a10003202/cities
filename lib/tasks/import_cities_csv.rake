namespace :import_cities_csv do
  desc "TODO"
  task create_cities: :environment do
    include ImportsModule
    directory = Rails.root.join('app', 'assets', 'files', 'cities.csv')
    import_cities_csv(directory)
  end

  desc "TODO"
  task update_cities: :environment do
    include ImportsModule
    directory = Rails.root.join('app', 'assets', 'files', 'cities.csv')
    import_cities_csv(directory)
  end

end
