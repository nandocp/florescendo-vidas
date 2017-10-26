class CreateResponsaveis < ActiveRecord::Migration[5.1]
  def change
    create_table :responsaveis do |t|
      t.string :nome_responsavel
      t.date :nascimento_responsavel
      t.string :telefone_responsavel
      t.string :endereco_responsavel
      t.integer :tipo_responsavel
      t.string :trabalho_outros
      t.references :crianca, foreign_key: true

      t.timestamps
    end
  end
end
