# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.
def assignment_score(grade_hash, name, assignment_number)
  grade_hash[name][assignment_number - 1]
end


# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_scores(grade_hash, assignment_score)
  # Loop through the grade_hash
  grade_hash.map do |key, value|
    value[assignment_score - 1]
  end
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_score)
  sum = 0
  grade_hash.each do |key, value|
    sum += value[assignment_score - 1]
  end
  average = sum / grade_hash.keys.length
  average
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)
  nest = grade_hash.to_a
  puts nest
  nest.each do |key, value|
    puts value.reduce(:+)
  end
  # grade_hash.each do |key, value|
  #   puts "#{key}: #{value.reduce(:+)}"
end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
  if score >= 90
    "A"
  elsif score >= 80 && score <= 89
    "B"
  elsif score >= 70 && score <= 79
    "C"
  elsif score >= 60 && score <= 69
    "D"
  else 
    "F"
  end
end

# Return a hash of students and their final letter grade, as determined
# by their average.


# Return the average for the entire class.
def class_average(grade_hash) 
  sum = 0
  students = grade_hash.keys.length
  scores = grade_hash.values.length
  total_scores = students * scores
  grade_hash.each do |key, value|
    sum += value.reduce(:+)
  end
  average = sum / total_scores
  puts average
end

# Return an array of the top `number_of_students` students.

