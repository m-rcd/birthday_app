class Counter
  def count(day, month)
    birthday = month.capitalize! + ' ' + day
    bday = DateTime.parse(birthday)
    today = Date.today
    bday < today ? next_birthday = bday + 365 : next_birthday = bday
    days_until_birthday = (next_birthday - today).to_i
  end
end
