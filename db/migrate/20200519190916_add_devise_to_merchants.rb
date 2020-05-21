# frozen_string_literal: true

class AddDeviseToMerchants < ActiveRecord::Migration[5.2]
  def change
    change_table :merchants do |t|
      ## Database authenticatable
      t.change :name, :string
      t.change :public_email, :string
      t.change :location, :string
      t.change :description, :text
      t.change :comment, :string
      t.change :facebook, :string
      t.change :instagram, :string
      t.change :website, :string
      t.change :picture_1, :string
      t.change :picture_2, :string
      t.change :picture_3, :string
      t.change :picture_4, :string
      t.change :email, :string, null: false, default: ""
      t.change :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    add_index :merchants, :email,                unique: true
    add_index :merchants, :reset_password_token, unique: true
    # add_index :merchants, :confirmation_token,   unique: true
    # add_index :merchants, :unlock_token,         unique: true
  end
end
