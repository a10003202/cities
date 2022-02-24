extend ImportsModule
directory = Rails.root.join('app', 'assets', 'files', 'cities.csv')
import_cities_csv(directory)