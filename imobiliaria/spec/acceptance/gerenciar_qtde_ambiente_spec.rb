# coding: utf-8

require 'spec_helper'

feature 'gerenciar quantidadeambiente' do

    scenario 'incluir quantidadeambiente' do #, :javascript => true do
    
        imovel = FactoryGirl.create(:imovel, :codigo => '1')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        visit new_quantidadeambiente_path

        preencher_e_verificar_quantidadeambiente
    end

    scenario 'alterar quantidadeambiente' do #, :js => true  do
    
        imovel = FactoryGirl.create(:imovel, :codigo => '1')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        quantidadeambiente = FactoryGirl.create(:quantidadeambiente, :imovel => imovel, :ambiente => ambiente)

        visit edit_quantidadeambiente_path(quantidadeambiente)

        preencher_e_verificar_quantidadeambiente
    end

    scenario 'excluir quantidadeambiente' do #, :javascript => true  do
    
        imovel = FactoryGirl.create(:imovel, :codigo => '1')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        quantidadeambiente = FactoryGirl.create(:quantidadeambiente, :imovel => imovel, :ambiente => ambiente)

        visit quantidadeambientes_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_quantidadeambiente

        fill_in 'Quantidade', :with => '5'
        
        select '1', :from => 'Imovel'
        select 'Quarto', :from => 'Ambiente'

        click_button 'Salvar'

        page.should have_content 'Quantidade: 5'
        
        page.should have_content 'Imovel: 1'
        page.should have_content 'Ambiente: Quarto'
    end
end
