namespace :route53 do
  
end

namespace :load do
  task :defaults do
    set :route53_roles, :web
  end
end
