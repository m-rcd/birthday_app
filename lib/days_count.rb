
class Counter
  def count(day, month)
    birthday = month.capitalize! + ' ' + day
    bday = DateTime.parse(birthday)
    today = Date.today
    if bday < today
      next_birthday = bday + 365
    else
      next_birthday = bday
    end
    days_until_birthday = (next_birthday - today).to_i
  end
end
