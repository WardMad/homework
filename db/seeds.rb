
Photo.destroy_all
Artist.destroy_all
Song.destroy_all

michel_jackson = Artist.create!( name: "MIchael Jackson", age: 0, country: "USA", style: "Pop", info:
   "Michael Joseph Jackson (August 29, 1958 – June 25, 2009) was an American singer, songwriter, and dancer.
    Dubbed the King of Pop, he was one of the most popular entertainers in the world, and was the best-selling music artist at the time of his death. Jackson's contributions to music, dance,
    and fashion ,along with his publicized personal life made him a global figure in popular culture for over four decades...." ,
    url: "https://en.wikipedia.org/wiki/Michael_Jackson", video: "https://www.youtube.com/watch?v=JJcy5pxg5xY" )



andrea_bocelli = Artist.create!( name: "Andrea Bocelli", age: 59, country: "Italy", style: "Classic Opera", info: "Born 22 September 1958, is an Italian classical crossover tenor, recording artist,
and singer-songwriter. Born with poor eyesight, Bocelli became completely blind at the age of 12, following a football accident.
Bocelli has recorded fifteen solo studio albums, of both pop and classical music,
three greatest hits albums, and nine complete operas, selling over 80 million records worldwide.He has had success as a crossover performer bringing classical music to the top of international pop charts...
  ", url: "http://www.andreabocelli.com/", video: "https://www.youtube.com/watch?v=06hqxmiOXIA"  )



beyonce = Artist.create!( name: "Beyonce", age: 39, country: "USA", style: "R&B, Pop", info: "Beyoncé Giselle Knowles-Carter . Born September 4, 1981, is an American singer, songwriter, dancer, and actress.
  Born and raised in Houston, Texas, Beyoncé performed in various singing and dancing competitions as a child. She rose to fame in the late 1990s as lead singer of the R&B girl-group Destiny's Child.
   Managed by her father, Mathew Knowles, the group became one of the world's best-selling girl groups in history..... ",
   url: "https://en.wikipedia.org/wiki/Beyonc%C3%A9", video: "https://www.youtube.com/watch?v=RZuJ_OHBN78")


aznaur = Artist.create!( name: "Charles Aznavour", age: 93, country: "Armenia/France", style: " Chanson, Jazz", info: "Charles Aznavour . Shahnour  Aznavourian, Armenian: Շահնուր Վաղինակ Ազնավուրեան; 22 May 1924.
   French, later naturalised Armenian singer, songwriter, actor, public activist and diplomat. Aznavour is known for his unique tenor voice:
    clear and ringing in its upper reaches, with gravelly and profound low notes. In a career spanning over 80 years, he has written more than 800 songs.
     On disc, he recorded more than 1,200 songs, sung in eight languages......
  ", url: "https://en.wikipedia.org/wiki/Charles_Aznavour", video: "https://www.youtube.com/watch?v=4xKYfPwTENQ" )



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

la= Song.create!(name:"La boheme", artist:aznaur )
amour= Song.create!(name:"la vie d'Amoure", artist:aznaur )
mamma= Song.create!(name:"La Mamma", artist:aznaur )
je= Song.create!(name:"Je me voyais déjà", artist:aznaur )

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510433405/CM4gNJyUYAAn9I1_pjteqs.jpg", artist:michel_jackson )
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510437683/pirkciau-andre-bocelli_qsyjdg.jpg", artist:andrea_bocelli )
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510493562/Beyonce_Knowles_with_necklaces_fxwlae.jpg", artist:beyonce )
photo4 = Photo.create!(remote_image_url:  "http://res.cloudinary.com/dh4hgusrb/image/upload/v1510514089/d1648767ff3f4cc6baf5210a69d96da9_ghg0ga.jpg", artist:aznaur )
