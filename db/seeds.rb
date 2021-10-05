# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all

# User.create!([{
#   email: "test1@gmail.com",
#   password_digest: "1111"

# }])

# User.create!([{
#   email: "test5@gmail.com",
#   password_digest: "5555"

# },{
#   email: "test6@gmail.com",
#   password_digest: "6666"

# },{
#   email: "test7@gmail.com",
#   password_digest: "7777"

# }])

# p "Created #{User.count} users" 



Task.destroy_all

# Task.create!([{
# 	title: "聚會", 
# 	content: "學習舞蹈課程-", 
# 	end_time: "2021-10-23 11:47:00.000000000 +0800", 
# 	status_type: "完成", 
# 	priority_type: "高",
# 	user_id: "5",
# }])

Task.create!([{
	title: "任務2",
	content: "任務2內容--", 
	end_time: "2021-10-23 11:47:00.000000000 +0800", 
	status_type: "待處理", 
	priority_type: "低",
	user_id: "3",
}, 
{
	title: "聚會", 
	content: "學習舞蹈課程-", 
	end_time: "2021-10-23 11:47:00.000000000 +0800", 
	status_type: "完成", 
	priority_type: "高",
	user_id: "4",
}, 
{
	title: "test011", 
	content: "任務2內容", 
	end_time: "2021-10-22 11:47:00.000000000 +0800", 
	status_type: "進行中", 
	priority_type: "高",
	user_id: "5",
}, 
{
 	title: "test02", 
 	content: "test02content", 
 	end_time: "2021-10-26 11:47:00.000000000 +0800", 
 	status_type: "進行中", 
 	priority_type: "高",
 	user_id: "6",
 }, 
 {
 	title: "有標題", 
 	content: "有內容", 
 	end_time: "2021-10-25 11:47:00.000000000 +0800", 
 	status_type: "進行中", 
 	priority_type: "中",
 	user_id: "7",
 }, 
 {
	title: "任務1", 
	content: "任務1內容--", 
	end_time: "2021-10-22 21:08:00.000000000 +0800", 
	status_type: "進行中", 
	priority_type: "中",
	user_id: "8",
}, 
{
 	title: "test01", 
 	content: "任務1內容---", 
 	end_time: "2021-10-29 17:55:00.000000000 +0800", 
 	status_type: "待處理", 
 	priority_type: "中",
 	user_id: "9",
}])


p "Created #{Task.count} tasks" 
