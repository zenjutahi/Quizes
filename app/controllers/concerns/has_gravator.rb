module HasGravator
  
  def gravator
    hash = Digest::MD5.hexdigest(email)
    return "http://www.gravatar.com/avatar/#{hash}"
  end
  
end






decision_reason_ids = [10,7]
for decision_reason_ids.each do |id|
  s = DecisionReasonStatus.new(decision_reason_id: id, decision_status_id: 8)
  s.save
end