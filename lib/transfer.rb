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
    if @status == valid? && "pending"
      sender.balance -= amount
      receiver.deposit
      self.status = "complete"
    end
  end
  
end
