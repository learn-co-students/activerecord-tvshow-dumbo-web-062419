Show.destroy_all

%w(Elementary House GOT MasterChef SUV Barry Chernobyl).each do |show|
  Show.create(name: show)
end



puts "Done Seeding 🤙🏿"
