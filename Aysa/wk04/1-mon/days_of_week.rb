days_of_the_week = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

days_of_the_week.unshift(days_of_the_week.pop)

weekdays = []
weekend = []
$i = 0
$num = 5

while $i < $num  do
   weekdays.push(days_of_the_week[i])
   $i +=1
end

weekend = days_of_the_week

days_of_the_week[0] = weekdays
days_of_the_week[1] = weekend

