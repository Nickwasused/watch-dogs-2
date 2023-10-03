TaxiRatingController = {}
function TaxiRatingController:Create(cbox)
end
function TaxiRatingController:Init(cbox)
end
function TaxiRatingController:ShutDown()
end
function TaxiRatingController:ShowRating()
  self:RatingShown()
end
function TaxiRatingController:HideRating()
  self:RatingHidden()
end
function TaxiRatingController:ResetRating()
  ResetTaxiRatingData()
  self:RatingReset()
end
function TaxiRatingController:ShowReward()
  ShowTaxiRewardHUD(self.MissionName)
  self:RewardShown()
end
function TaxiRatingController:AddRating()
  AddRemoveTaxiRating(self.RatingAmount)
  self:RatingAdded()
end
function TaxiRatingController:RemoveRating()
  AddRemoveTaxiRating(-self.RatingAmount)
  self:RatingRemoved()
end
export = TaxiRatingController
TaxiRatingController = nil
