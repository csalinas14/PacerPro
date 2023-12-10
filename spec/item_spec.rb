require 'rails_helper'

RSpec.describe Item, type: :model do
    let(:item) { Item.create(name: 'test', deleted_at: nil)}
    let(:item2) {Item.create(name: 'test2', deleted_at: DateTime.now)}

    describe '#soft_delete' do
        subject(:soft_delete_method) {item.soft_delete}
        subject(:restore_method) {item2.restore}

        context 'soft_delete sets the current time' do
            it 'sets deleted_at to current time' do
                expect(soft_delete_method).to eq(DateTime.now.to_i)
            end
        end

        context 'restore returns item to default' do
            it 'sets deleted_at to nil' do
                expect(restore_method).to eq(nil)
            end
        end

        context 'default scope returns desired results' do
            it 'returns only Items that are not soft deleted' do
                expect(Item.all).to eq [item]
            end
        end


    end

    

end
