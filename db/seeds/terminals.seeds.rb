extend ImportsModule
directory = Rails.root.join('app', 'assets', 'files', 'terminals.csv')
import_terminals_csv(directory)