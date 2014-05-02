require('faker')

module RubyReportToXls
	module App
		module Models
			class SeedGenerator
				Recent = ["SUCCESS", "FAILURE"]
				Max = 100 + 100 * SecureRandom.random_number(10)
				class << self
					def createProject(num = 10)
						for i in 1..num
							Project.create!(
								:'name'=> Faker::Commerce.product_name, 
								:'last_build'=> Recent.sample,
								:'recent_results'=> (10 + SecureRandom.random_number(10))/(5 + SecureRandom.random_number(15))
								)
						end
						Project.all
					end

					def createBuilds(id, num = 20)
						for i in 1..num
							Build.create(
								:'project_id' => id,
								:'build_number' => Max + i,
								:'date' => DateTime.commercial(2014 - SecureRandom.random_number(num)), 
								:'duration' => (3.1415 * SecureRandom.random_number(num) + 100),
								:'status'=> Recent.sample
								)
						end
						Build.all
					end
				end
			end
		end
	end
end
