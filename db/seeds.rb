Receipt.destroy_all
BankAccount.destroy_all
Retailer.destroy_all
Customer.destroy_all

30.times do
    Customer.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: (16..100).to_a.sample,
        # dob: faker::dateTimeBetween('1930-01-01', '2003-12-31')
        occupation: Faker::Company.profession
    })
end

20.times do
    Retailer.create({
     name: Faker::Company.name,
     sector: Faker::Job.field,
     annual_turnover: Faker::Number.between(from: 20000, to: 1100000),
     established: Faker::Number.between(from: 1930, to: 2020),
     employees: Faker::Number.between(from: 20, to: 10000)
 })
 end

35.times do
    BankAccount.create({
    account_number: Faker::Number.between(from: 10000000, to: 99999999),
    sort_code: Faker::Number.between(from: 100000, to: 999999),
    type_of_account: ['current', 'saving', 'foreign'].sample,
    funds: Faker::Number.between(from: 0, to: 10000),
    overdraft: [2000, 1500, 1000, 750, 500, 250, 0].sample,
    customer_id: Customer.all.sample.id
    })
end

100.times do
    Receipt.create({
        total_amount: Faker::Number.between(from: 3, to: 10000),
        items: ['shoes', 'handbag', 'mobile', 'groceries', 'bedsit', 'lava lamp', 'home exercise kit', 'banana bread', 'Tiger King DVD', 'Oyster Card'].sample(3).join(", "),
        bank_account_id: BankAccount.all.sample.id,
        retailer_id: Retailer.all.sample.id
    })
end

# Receipt.create(total_amount: 50, items: “shoes”, bank_account_id: 20, retailer_id: 5
# account_number: Faker::Bank.account_number(digits: 8),
# sort_code: Faker::Bank.sort_code(digits: 6),
#bank_account_id: Faker::Number.within(range: 1..35),
#retailer_id: Faker::Number.within(range: 1..20)
#Faker::Number.between(from: 211, to: 272)
#customer_id: Faker::Number.within(range: 1..30)
#customer_id: Customer.all.sample
#BankAccount.create(account_number: 12345678, sort_code: 123456, type_of_account: “pls work”, funds: 404, overdraft: 500, customer_id: 15)
