Photo.destroy_all
Artist.destroy_all
Song.destroy_all

michel_jackson = Artist.create!( name: "MIchael Jackson", age: 0, country: "USA", style: "Pop" )
andrea_bocelli = Artist.create!( name: "Andrea Bocelli", age: 59, country: "Italy", style: "Classic Opera"  )
artist3 = Artist.create!( name: "Matt Passmore", age: 47, country: "England", style: "Rep" )


billie_jean= Song.create!(name:"Billie Jean", artist:michel_jackson )
triller= Song.create!(name:"Thriller", artist:michel_jackson )
blac_white= Song.create!(name:"Black or White", artist:michel_jackson )

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510433405/CM4gNJyUYAAn9I1_pjteqs.jpg", artist:michel_jackson )
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510437683/pirkciau-andre-bocelli_qsyjdg.jpg", artist:andrea_bocelli )
