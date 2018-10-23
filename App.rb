require 'active_record'
require 'uri'

uri = URI.parse(ENV['ELEPHANTSQL_URL'] || 'postgres://localhost/contacts')

ActiveRecord::Base.establish_connection(adapter: 'postgresql', host: uri.host, username: uri.user, password: uri.password, database: uri.path.sub('/', ''))

# class Person < ActiveRecord::Base
# end

# persons = Person.where(first_name: 'John').where.not(last_name: 'Smith')
# persons.each do |p|
#   puts [p.first_name, p.last_name].join(' ')
# end