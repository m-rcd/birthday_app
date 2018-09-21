class Counter

  def count(day, month)
    today = Date.today

    date = month.capitalize! + ' ' + day + ' ' + today.year.to_s
    birthday = Date.parse(date)

    if birthday.day == 29 && birthday.month == 2
      next_birthday = birthday + (3 * 365) + 367
    elsif birthday <= today
      leap_year?(today) ? days = 367 : days = 365
      next_birthday = birthday + days
    else
      next_birthday = birthday
    end
    (next_birthday - today).to_i
  end

private

   def leap_year?(today)
    Date.new(today.year).leap?
  end
end
