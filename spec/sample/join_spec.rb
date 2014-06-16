require 'spec_helper'
require 'egison'

describe "sample" do
  describe "join.rb" do
    it %q{match_all([1,2,3,4,5]) do with(List.(*_hs, *_ts)) { [hs, ts] } end} do
      expect(match_all([1,2,3,4,5]) do with(List.(*_hs, *_ts)) { [hs, ts] } end).to eq \
        [[[], [1, 2, 3, 4, 5]], [[1], [2, 3, 4, 5]], [[1, 2], [3, 4, 5]], [[1, 2, 3], [4, 5]], [[1, 2, 3, 4], [5]], [[1, 2, 3, 4, 5], []]]
    end
    it %q{match_all([1,2,3,4,5]) do with(Multiset.(*_hs, *_ts)) { [hs, ts] } end} do
      expect(match_all([1,2,3,4,5]) do with(Multiset.(*_hs, *_ts)) { [hs, ts] } end).to eq \
        [[[], [1, 2, 3, 4, 5]], [[5], [1, 2, 3, 4]], [[4], [1, 2, 3, 5]], [[4, 5], [1, 2, 3]], [[3], [1, 2, 4, 5]], [[3, 5], [1, 2, 4]], [[3, 4], [1, 2, 5]], [[3, 4, 5], [1, 2]], [[2], [1, 3, 4, 5]], [[2, 5], [1, 3, 4]], [[2, 4], [1, 3, 5]], [[2, 4, 5], [1, 3]], [[2, 3], [1, 4, 5]], [[2, 3, 5], [1, 4]], [[2, 3, 4], [1, 5]], [[2, 3, 4, 5], [1]], [[1], [2, 3, 4, 5]], [[1, 5], [2, 3, 4]], [[1, 4], [2, 3, 5]], [[1, 4, 5], [2, 3]], [[1, 3], [2, 4, 5]], [[1, 3, 5], [2, 4]], [[1, 3, 4], [2, 5]], [[1, 3, 4, 5], [2]], [[1, 2], [3, 4, 5]], [[1, 2, 5], [3, 4]], [[1, 2, 4], [3, 5]], [[1, 2, 4, 5], [3]], [[1, 2, 3], [4, 5]], [[1, 2, 3, 5], [4]], [[1, 2, 3, 4], [5]], [[1, 2, 3, 4, 5], []]]
    end
    it %q{match_all([1,2,3,4,5]) do with(Set.(*_hs, *_ts)) { [hs, ts] } end} do
      expect(match_all([1,2,3,4,5]) do with(Set.(*_hs, *_ts)) { [hs, ts] } end).to eq \
        [[[], [1, 2, 3, 4, 5]], [[5], [1, 2, 3, 4, 5]], [[4], [1, 2, 3, 4, 5]], [[4, 5], [1, 2, 3, 4, 5]], [[3], [1, 2, 3, 4, 5]], [[3, 5], [1, 2, 3, 4, 5]], [[3, 4], [1, 2, 3, 4, 5]], [[3, 4, 5], [1, 2, 3, 4, 5]], [[2], [1, 2, 3, 4, 5]], [[2, 5],[1, 2, 3, 4, 5]], [[2, 4], [1, 2, 3, 4, 5]], [[2, 4, 5], [1, 2, 3, 4, 5]], [[2,3], [1, 2, 3, 4, 5]], [[2, 3, 5], [1, 2, 3, 4, 5]], [[2, 3, 4], [1, 2, 3, 4, 5]], [[2, 3, 4, 5], [1, 2, 3, 4, 5]], [[1], [1, 2, 3, 4, 5]], [[1, 5], [1, 2, 3, 4, 5]], [[1, 4], [1, 2, 3, 4, 5]], [[1, 4, 5], [1, 2, 3, 4, 5]], [[1, 3], [1, 2, 3, 4, 5]], [[1, 3, 5], [1, 2, 3, 4, 5]], [[1, 3, 4], [1, 2, 3, 4, 5]], [[1, 3, 4, 5], [1, 2, 3, 4, 5]], [[1, 2], [1, 2, 3, 4, 5]], [[1, 2, 5], [1, 2, 3, 4, 5]],[[1, 2, 4], [1, 2, 3, 4, 5]], [[1, 2, 4, 5], [1, 2, 3, 4, 5]], [[1, 2, 3], [1, 2, 3, 4, 5]], [[1, 2, 3, 5], [1, 2, 3, 4, 5]], [[1, 2, 3, 4], [1, 2, 3, 4, 5]], [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5]]]
    end
  end
end
