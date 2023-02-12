INSERIR_RECEITA = 1
VIZUALIZAR_RECEITA = 2
SAIR = 3

def bem_vindo()
    puts "Bem-vindo ao Cookbook, sua rede social de receitas."
end

bem_vindo()

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar receita"
    puts "[#{VIZUALIZAR_RECEITA}] Ver todas as receitas"
    puts "[#{SAIR}] Sair"
    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita()
    puts "Digite o nome da Receita: "
    nome = gets.chomp()
    puts "Digite o tipo da Receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    return { nome: nome, tipo: tipo}
end

def imprimir_receitas(r) 
    puts "========= Receitas cadastradas ========="
    r.each do |receita|
        puts "#{receita [:nome]} - #{receita[:tipo]}"
    end
    if r.empty?
        puts "Nenhuma receita cadastrada."
    end
end

receitas = []

opcao = menu()

# to_i() é para transformar o valo capturado pelo gets em um inteiro

while (opcao != SAIR) do

    if (opcao == INSERIR_RECEITA) 
        receitas << inserir_receita()
    elsif(opcao == VIZUALIZAR_RECEITA)
        imprimir_receitas(receitas)
    else
        puts "Opção inválida"
    end

    opcao = menu()
end

puts "Obrigada por usar o Cookbook"


#--------------------------------------------------------------------------------------------------
#***** OBSERVAÇÕES*****

# for receita in receitas do
#    puts receita
# end

# o método each faz a mesma coisa que o for, de uma forma mais legível
# no lugar do each, poderiamos ter usado simplestmente puts receitas, pois quando fazemos 
# um puts de um array o ruby entende que queremos fazer como se fosse um for ou each.