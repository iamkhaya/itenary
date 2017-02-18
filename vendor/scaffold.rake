rails generate scaffold provider name:string payment_type:string branch:string bank_detail:string
rails generate scaffold providers/payment_type type:string
rails generate scaffold address street_number:integer street_name:string suburb:string city:string region:string postal_code:integer box_number:integer country:string continent:string
rails generate scaffold providers/branch provider:string address:string phone_number:integer landline:integer cell_number:integer opening_times:timestamp bank_detail:string
rails generate scaffold providers/opening_time opening_time: timestamp closing_time:timestamp day_of_week:string
rails generate scaffold providers/bank_detail bank:string account_number:integer branch:string branch_code:string swift_code:string

rails destroy scaffold provider
rails destroy scaffold provider/payment_type
rails destroy scaffold address
rails destroy scaffold provider/branch
rails destroy scaffold provider/opening_time
rails destroy scaffold provider/bank_detail
