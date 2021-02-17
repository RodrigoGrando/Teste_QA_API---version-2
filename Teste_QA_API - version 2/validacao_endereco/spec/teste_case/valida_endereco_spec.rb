def validarResultado(cep, bairro, cidade, uf, erro)
    if cep != nil
        expect(cep).to eql @endereco.cep
        expect(bairro).to eql @endereco.bairro
        expect(cidade).to eql @endereco.cidade
        expect(uf).to eql @endereco.uf
        puts("Código IBGE: #{@resultado["ibge"]}")

    elsif erro != nil
        expect(erro).to eql true 
    end

end

context "VALIDAÇÃO DE ENDEREÇO - AÇÕES VÁLIDAS" do
    before do            
        @endereco = build(:Endereco_valido)        
        @resultado = (Busca_cep.buscarCep(@endereco.cep)) 
    end

    it "[CT1][AV] Consulta CEP válido" do
        validarResultado(@resultado["cep"], @resultado["bairro"], @resultado["localidade"], @resultado["uf"], @resultado["erro"])
    end        

end

context "VALIDAÇÃO DE ENDEREÇO - AÇÕES INVÁLIDAS" do
    before do            
        @endereco = build(:Endereco_invalido)        
        @resultado = (Busca_cep.buscarCep(@endereco.cep))       
        end

    it "[CT2][AI] Consulta CEP inválido" do 
        validarResultado(@resultado["cep"], @resultado["bairro"], @resultado["localidade"], @resultado["uf"], @resultado["erro"]) 
    end    

end
