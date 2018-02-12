Project.delete_all
User.delete_all

arr1 = ['pudding', 'fairy', 'candle']
arr2 = ['mistyrose', 'nuffin', 'cake', 'donut']

user = User.new
user.email = 'dt@ga.co'
user.save

10.times do
  Project.create(
    title: "#{arr1.sample} #{arr2.sample}",
    user_id: user.id
    )
end