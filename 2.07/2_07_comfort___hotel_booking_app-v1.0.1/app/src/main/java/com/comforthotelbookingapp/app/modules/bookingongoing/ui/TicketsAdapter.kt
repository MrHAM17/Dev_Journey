package com.comforthotelbookingapp.app.modules.bookingongoing.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowTickets1Binding
import com.comforthotelbookingapp.app.modules.bookingongoing.`data`.model.Tickets1RowModel
import kotlin.Int
import kotlin.collections.List

class TicketsAdapter(
  var list: List<Tickets1RowModel>
) : RecyclerView.Adapter<TicketsAdapter.RowTickets1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTickets1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_tickets1,parent,false)
    return RowTickets1VH(view)
  }

  override fun onBindViewHolder(holder: RowTickets1VH, position: Int) {
    val tickets1RowModel = Tickets1RowModel()
    // TODO uncomment following line after integration with data source
    // val tickets1RowModel = list[position]
    holder.binding.tickets1RowModel = tickets1RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Tickets1RowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: Tickets1RowModel
    ) {
    }
  }

  inner class RowTickets1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTickets1Binding = RowTickets1Binding.bind(itemView)
    init {
      binding.btnPaid.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Tickets1RowModel())
      }
      binding.btnCancelBooking.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Tickets1RowModel())
      }
      binding.btnViewTicket.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Tickets1RowModel())
      }
    }
  }
}
