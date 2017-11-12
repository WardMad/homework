Photo.destroy_all
Artist.destroy_all
Song.destroy_all

michel_jackson = Artist.create!( name: "MIchael Jackson", age: 0, country: "USA", style: "Pop" )
andrea_bocelli = Artist.create!( name: "Andrea Bocelli", age: 59, country: "Italy", style: "Classic Opera"  )
beyonce = Artist.create!( name: "Beyonce", age: 39, country: "USA", style: "R&B, Pop" )
aznaur = Artist.create!( name: "Charles Aznavour", age: 93, country: "Armenia/France", style: " Chanson, Jazz"  )


billie_jean= Song.create!(name:"Billie Jean", artist:michel_jackson )
triller= Song.create!(name:"Thriller", artist:michel_jackson )
blac_white= Song.create!(name:"Black or White", artist:michel_jackson )
man= Song.create!(name:"Man in the Mirror", artist:michel_jackson )
criminal= Song.create!(name:" Smooth Criminal", artist:michel_jackson )

vivo= Song.create!(name:"Vivo Per Lei", artist:andrea_bocelli )
time= Song.create!(name:" Time to Say Goodbye", artist:andrea_bocelli )
believe= Song.create!(name:" Because We Believe", artist:andrea_bocelli )
canto= Song.create!(name:" Canto Della Terra ", artist:andrea_bocelli )

girl= Song.create!(name:"Naughty Girl", artist:beyonce )
crazy= Song.create!(name:"Crazy in Love", artist:beyonce )
single= Song.create!(name:"Single Ladies", artist:beyonce )
girl= Song.create!(name:"Naughty Girl", artist:beyonce )
lier= Song.create!(name:"Beautiful Lier", artist:beyonce )

la= Song.create!(name:"La bohème", artist:aznaur )
amour= Song.create!(name:"la vie d'Amoure", artist:aznaur )
mamma= Song.create!(name:"La Mamma", artist:aznaur )
voyais= Song.create!(name:"Je me voyais déjà", artist:aznaur )

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510433405/CM4gNJyUYAAn9I1_pjteqs.jpg", artist:michel_jackson )
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510437683/pirkciau-andre-bocelli_qsyjdg.jpg", artist:andrea_bocelli )
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510493562/Beyonce_Knowles_with_necklaces_fxwlae.jpg", artist:beyonce )
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510494197/2014.06.23._Charles_Aznavour_Fot_Mariusz_Kubik_01_zjhqzi.jpg", artist:aznaur )
