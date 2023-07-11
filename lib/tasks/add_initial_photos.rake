namespace :gaerdesmutte do
  desc "Add initial photos"
  task add_initial_photos: :environment do
    Photo.first.blob.attach(
      io: File.open(Rails.root.join("app", "assets", "images", "wren1.jpg")),
      filename: "wren1.jpg"
    )

    Photo.second.blob.attach(
      io: File.open(Rails.root.join("app", "assets", "images", "goldcrest.jpg")),
      filename: "goldcrest.jpg"
    )

    Photo.third.blob.attach(
      io: File.open(Rails.root.join("app", "assets", "images", "wren2.jpg")),
      filename: "wren2.jpg"
    )
  end
end
