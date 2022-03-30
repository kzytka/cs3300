require 'rails_helper'

RSpec.describe Project, type: :model do
    context 'testing for valid fields' do
        it 'makes sure title shows up' do
            project = Project.new(title: 'The Title')
            expect(project.valid?).to be false
        end

        it 'makes sure description shows up' do
            project = Project.new(description: 'The description goes here')
            expect(project.valid?).to be false
        end

        it "should be able to save project" do
            project = Project.new(title: "The Title", description: "The description goes here")
            expect(project.save).to be true
        end
    end
    
    context 'testing scope' do
        let(:params) { { title: "Title", description: "some description" } }
        before(:each) do
            Project.create(params)
            Project.create(params)
            Project.create(params)
        end

        it "should return all projects" do
        expect(Project.count).to eq(3)
        end
    end
end