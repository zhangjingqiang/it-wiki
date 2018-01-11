namespace :wiki do
  desc "Modify link if contains slash at the end"

  task :update_link => :environment do
    Wiki.all.each do |t|
      if t.link.ends_with?('/')
        t.link = t.link.chomp('/')
        t.save
      end
    end
  end
end
