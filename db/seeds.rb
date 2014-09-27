# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({acclaim_id: '0891d984-e35c-45d2-b21f-7912e5eb8bb8', latitude: '44.974045', longitude: '-93.226587'})
Employer.create({name: 'Green Spoon Cafe', latitude: '44.972436', longitude: '-93.220096', badges: ['0f0fd56b-7722-46ea-af42-ca6bafe94ab3', 'e919c9ca-dc16-413e-a2ad-46aba556d86f']})