
file = File.readlines('data.csv')

header = file[0].gsub("\n", "").split(',')
body = file[1..]

complete_data = []
body.each do |row|
  data = row.gsub("\n", "").split(',')
  row_hash = {}

  i = 0
  data.each do |d|
    row_hash[header[i]] = d
    i += 1
  end

  complete_data << row_hash
end


puts complete_data
