class FeePaymentsController < ApplicationController
 
  def show
    @fee_payment = FeePayment.find(params[:id])

    respond_to do |format|
      format.html
      format.json
      format.pdf {
        (send_data @fee_payment.receipt.render, filename: "#{@fee_payment.student.name}" +"_" "#{@fee_payment.student.id}-sms-receipt.pdf",
      type:  "application/pdf",
      disposition: :inline
    )
    }
  end
  end
  end
