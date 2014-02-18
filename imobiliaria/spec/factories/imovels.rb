# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :imovel do
    codigo "MyString"
    modo "MyString"
    tipo "MyString"
    preco "MyString"
    endereco "MyString"
    datacadastro "2014-02-18"
    dono nil
  end
end
