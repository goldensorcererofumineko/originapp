class FoodItem
  include ActiveHash::Base
  self.data = [
    { id: 1, name: '料理1' },
    { id: 2, name: '料理2' },
    { id: 3, name: '料理3' },
    # 必要なだけデータを追加
  ]
end