class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :job_title
      t.string :job_number
      t.string :job_link
      t.date :date_applied
      t.date :interview_date
      t.string :contact_person
      t.string :contact_email
    end
  end
end
