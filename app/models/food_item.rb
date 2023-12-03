class FoodItem
  include ActiveHash::Base
  self.data = [
    { id: 1, name: 'サラダ' },
    { id: 2, name: 'お肉' },
    { id: 3, name: '魚' },
    { id: 4, name: 'ご飯' },
    { id: 5, name: 'パン' },
    { id: 6, name: '麺' },
    { id: 7, name: '水' },
    { id: 8, name: 'お茶' },
    { id: 9, name: 'コーヒー' },
    { id: 10, name: 'ジュース' },
    { id: 11, name: 'その他' }
  ]
end