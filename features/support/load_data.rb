require 'faker'

module LoadData
	class DadosUsuario
		def nao_cadastrado 
			return { 	
				:nome => Faker::Name.name, 
				:cpf => Faker::CPF.numeric,
				:ddd_telefone1 => "11",
				:telefone1 => "54329876",
				:ddd_telefone2 => "11",
				:telefone2 => "987654321",
				:nascimentoDia => Faker::Number.between(from = 01, to = 30),
				:nascimentoMes => Faker::Number.between(from = 01, to = 12),
				:nascimentoAno => Faker::Number.between(from = 1900, to = 2000),

				:email => Faker::Internet.email, 
				:senha => "1234567890" 
				}	
		end
	end
end