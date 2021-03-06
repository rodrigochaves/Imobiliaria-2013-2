# coding: utf-8

require 'spec_helper'

feature 'gerenciar quantidadetipoambiente' do

    scenario 'incluir quantidadetipoambiente' do #, :javascript => true do
    
        interessado = FactoryGirl.create(:interessado, :login => 'rod')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        visit new_quantidadetipoambiente_path

        preencher_e_verificar_quantidadetipoambiente
    end

    scenario 'alterar quantidadetipoambiente' do #, :js => true  do
    
        interessado = FactoryGirl.create(:interessado, :login => 'rod')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        quantidadetipoambiente = FactoryGirl.create(:quantidadetipoambiente, :interessado => interessado, :ambiente => ambiente)

        visit edit_quantidadetipoambiente_path(quantidadetipoambiente)

        preencher_e_verificar_quantidadetipoambiente
    end

    scenario 'excluir quantidadetipoambiente' do #, :javascript => true  do
    
        interessado = FactoryGirl.create(:interessado, :login => 'rod')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        quantidadetipoambiente = FactoryGirl.create(:quantidadetipoambiente, :interessado => interessado, :ambiente => ambiente)

        visit quantidadetipoambientes_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_quantidadetipoambiente

        fill_in 'Quantidade', :with => '5'
        
        select 'rod', :from => 'Interessado'
        select 'Quarto', :from => 'Ambiente'

        click_button 'Salvar'

        page.should have_content 'Quantidade: 5'
        
        page.should have_content 'Interessado: rod'
        page.should have_content 'Ambiente: Quarto'
    end
end
