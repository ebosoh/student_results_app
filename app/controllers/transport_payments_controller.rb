class TransportPaymentsController < ApplicationController
  	def show

	  @transport_payment = TransportPayment.find(params[:id])

    respond_to do |format|
      format.html
      format.json
      format.pdf {
        (send_data @transport_payment.receipt.render, filename: "#{@transport_payment.student.name}" +"_" "#{@transport_payment.student.id}-sms-receipt.pdf",
      type:  "application/pdf",
      disposition: :inline
    )
    }


  end
  end
  end
