require_relative "../modelos_de_massa/endereco_model"

FactoryBot.define do
    factory :Endereco_valido, class: EnderecoModel do
        cep {"01001-000"}
        logradouro {"Praça da Sé"}
        bairro {"Sé"}
        cidade {"São Paulo"}
        uf {"SP"}
    end

    factory :Endereco_invalido, class: EnderecoModel do
        cep {"11111111"}
        logradouro {"Praça da Sé"}
        bairro {"Sé"}
        cidade {"São Paulo"}
        uf {"SP"}
    end

end