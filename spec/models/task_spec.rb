require 'rails_helper'

  describe Task, type: :model do 

  subject {
    Task.new({title: 'A Task', content: 'this is a content'})
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end 

  it 'is not valid with valid title' do
    subject.title = nil
    subject.content = nil
    expect(subject).to_not be_valid
  end

  it "applies a default scope to collections by departure ascending" do
    expect(Task.all).to eq Task.all.order(created_at: :desc)
  end

end
