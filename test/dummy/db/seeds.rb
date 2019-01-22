# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Homeland::Node.count == 0
  root_names = %w(课程资源共享 疑难解答 课程评价 偷偷吐槽 内推交流 编程技术 项目组队)
  root_names.each do |name|
    Homeland::Node.create(name: name, description: name)
  end
end
