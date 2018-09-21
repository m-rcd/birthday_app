class Counter
  def count(day, month)
    date = month.capitalize! + ' ' + day
    birthday = Date.parse(date)
    today = Date.today
    birthday < today ? next_birthday = birthday + 365 : next_birthday = birthday
    days_until_birthday = (next_birthday - today).to_i
  end
end
