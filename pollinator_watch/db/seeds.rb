# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


4.times do
    Insect.create!(
        name:'Carpenter Bee',
        species: 'Xylocopa virginica',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'salvia'
    )
    end

3.times do
    Insect.create!(
        name:'Carpenter Bee',
        species: 'Xylocopa virginica',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'mountain mint'
    )
    end

3.times do
    Insect.create!(
        name:'Carpenter Bee',
        species: 'Xylocopa virginica',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'basil'
    )
    end

5.times do
    Insect.create!(
        name:'Honey Bee',
        species: 'Apis mellifera',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'purple coneflower'
    )
    end

5.times do
    Insect.create!(
        name:'Honey Bee',
        species: 'Apis mellifera',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'mountain mint'
    )
    end

4.times do
    Insect.create!(
        name:'Bumble Bee',
        species: 'Bombus impatiens',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'salvia'
    )
    end

3.times do
    Insect.create!(
        name:'Bumble Bee',
        species: 'Bombus impatiens',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'tomato'
    )
    end

3.times do
    Insect.create!(
        name:'Bumble Bee',
        species: 'Bombus impatiens',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'mountain mint'
    )
    end

5.times do
    Insect.create!(
        name:'Sweat Bee',
        species: 'Lasioglossum sopinci',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'mountain mint'
    )
    end

5.times do
    Insect.create!(
        name:'Sweat Bee',
        species: 'Lasioglossum sopinci',
        latitude: Faker::Address.latitude.to_f,
        longitude: Faker::Address.longitude.to_f,
        plant: 'salvia'
    )
    end

100.times do
    Note.create!(
        text: Faker::Lorem.sentence,
        insect_id: Faker::Number.between(1, 40)
    )
    end
