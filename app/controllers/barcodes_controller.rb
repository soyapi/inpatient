class BarcodesController < ApplicationController
  def new
  end

  def create
    print_and_redirect("/barcodes/label?barcode=#{params[:barcode]}&label=#{params[:label]}", '/admin')  
  end

  def label
    label = ZebraPrinter::StandardLabel.new
    label.font_size = 2
    label.font_horizontal_multiplier = 2
    label.font_vertical_multiplier = 2
    label.left_margin = 50
    label.draw_barcode(50,180,0,1,5,15,120,false,"#{params[:barcode]}")
    label.draw_multi_text("#{(params[:label] || '').delete("'")}") #'
    send_label(label.print(1))
  end  
end
