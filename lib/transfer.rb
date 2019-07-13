class Transfer
  attr_accessor :sender, :receiver, :amount,
  :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
 
  def valid?
    sender.valid?
    receiver.valid?
  end
  
  def execute_transaction
    if @status == "pending" && valid?
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    end
    if !sender.valid?
      self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end

  def reverse_transfer
    if self.status = "complete"
    sender.balance += amount
    receiver.balance -= amount
  end
end
end
