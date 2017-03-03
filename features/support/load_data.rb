require 'faker'
require 'cpf_faker'

module LoadData
	class DadosUsuario
		def cadastro_usuario_checkout 
			return { 	
				:nome => Faker::Name.name, 
				:cpf => Faker::CPF.numeric,
				:ddd_telefone1 => "11",
				:telefone1 => "54329876",
				:ddd_telefone2 => "11",
				:telefone2 => "987654321",
				#aqui cabe melhorias, se randomicamente cair 30/02 o teste trava
				:nascimentoDia => Faker::Number.between(from = 01, to = 30),
				:nascimentoMes => Faker::Number.between(from = 01, to = 12),
				:nascimentoAno => Faker::Number.between(from = 1950, to = 1995),

				:email => Faker::Internet.email, 
				:senha => "1234567890" 
				}	
		end

		def cadastro_endereco_checkout 
			return { 	
				:cep => "04348030",
				:nome => Faker::Name.name, 
				:destinatario => Faker::Name.name,
				#:rua => "Rua teste",
				:complemento => "apto 123",
				#:bairro => "Jabaquara",
				#:municipio => "Sao Paulo",
				#:estado => ""
				:pontoreferencia => "Teste",
				:numero => 1000
				}	
		end
	end
end

