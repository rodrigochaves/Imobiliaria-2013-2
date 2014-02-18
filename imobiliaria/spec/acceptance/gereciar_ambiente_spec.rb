# coding: utf-8

require 'spec_helper'

feature 'gerenciar ambiente' do

    scenario 'incluir ambiente' do #, :javascript => true do
    
        visit new_ambiente_path

        preencher_e_verificar_ambiente
    end

    scenario 'alterar ambiente' do #, :js => true  do
    
        ambiente = FactoryGirl.create(:ambiente)

        visit edit_ambiente_path(ambiente)

        preencher_e_verificar_ambiente
    end

    scenario 'excluir ambiente' do #, :javascript => true  do
    
        ambiente = FactoryGirl.create(:ambiente)

        visit ambientes_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_ambiente

        fill_in 'Descrição', :with => 'Quarto'

        click_button 'Salvar'

        page.should have_content 'Descrição: Quarto'
    end
end
