資料表

--Role
	Role 		string
	
	has_many	User


--User
	Email string
	password string
	
	has_many	Task
	belongs_to 	Role
	Role_id
	
	
--Task
	title 		string
	content 	string
	state_type 	string
	start_time 	datetime
	end_time 	datetime
	
	has_many 	Tag	
	belongs_to 	User
	User_id
	
	
--Tag
	name				string
	
	belongs_to_many 	Task
	Task_id


### Heroku網站佈署
- 點選下拉選單 Dashboard 進去，點 New->Create new app，輸入 App name，點 Create app
- 進去後，在 Deployment method 點選 GitHub Connect to Github，Search (repo-name) 後，點選 Deploy Branch
- 點選 More 下拉選單內的 Run console ，在 heroku run 欄位輸入 rails db:migrate 後點選 Run 即可