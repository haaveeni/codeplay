require 'rails_helper'

describe 'Admin deletes courses' do
    it 'successfully' do
        course = Course.create!(name: 'Elixir', description: 'Linguagem de programação funcional, concorrente, de propósito 
                                                              geral que executa na máquina virtual Erlang.',
            code: 'ELIXIRBASIC', price: 500,
            enrollment_deadline: '31/12/2027')

        visit course_path(course)
        click_on 'Apagar'

        expect(page).to have_text('Curso apagado com sucesso!')
        expect(page).to eq(courses_path)
    end
end
