class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid?
    if sender.valid? && receiver.valid? 
      true 
    else 
      false
    end 
  end
  
  #def execute_transaction
    #if (@status == 'pending') && valid?
     # @sender.deposit(-amount)
     # @receiver.deposit(amount)
     # @status = 'complete'
   # elsif !valid? || sender.balance< amount
    #  @status = 'rejected'
     # "Transaction rejected. Please check your account balance."
   # end
 # end
 
 def execute_transaction 
   if valid? == true && sender.balance > amount && self.status == "pending"
     sender.balance = sender.balance - amount 
     receiver.balance = receiver.balance + amount
     self.status = "complete"
   end 
 end 
     
    
end
