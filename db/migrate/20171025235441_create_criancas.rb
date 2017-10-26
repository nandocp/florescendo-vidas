class CreateCriancas < ActiveRecord::Migration[5.1]
  def change
    create_table :criancas do |t|
      t.string :nome_crianca
      t.date :nascimento_crianca
      t.integer :horario
      t.date :data_matricula
      t.string :necessidades_especiais

      t.timestamps
    end
  end
end
