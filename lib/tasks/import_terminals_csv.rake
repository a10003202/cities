namespace :import_terminals_csv do
  desc "TODO"
  task create_terminals: :environment do
    include ImportsModule
    directory = Rails.root.join('app', 'assets', 'files', 'terminals.csv')
    import_terminals_csv(directory)
  end

  desc "TODO"
  task update_terminals: :environment do
    include ImportsModule
    directory = Rails.root.join('app', 'assets', 'files', 'terminals.csv')
    import_terminals_csv(directory)
  end

end
