package com.comforthotelbookingapp.app.modules.bookingcancelled.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowTickets2Binding
import com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.model.Tickets2RowModel
import kotlin.Int
import kotlin.collections.List

class TicketsAdapter(
  var list: List<Tickets2RowModel>
) : RecyclerView.Adapter<TicketsAdapter.RowTickets2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTickets2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_tickets2,parent,false)
    return RowTickets2VH(view)
  }

  override fun onBindViewHolder(holder: RowTickets2VH, position: Int) {
    val tickets2RowModel = Tickets2RowModel()
    // TODO uncomment following line after integration with data source
    // val tickets2RowModel = list[position]
    holder.binding.tickets2RowModel = tickets2RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Tickets2RowModel>) {
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
      item: Tickets2RowModel
    ) {
    }
  }

  inner class RowTickets2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTickets2Binding = RowTickets2Binding.bind(itemView)
    init {
      binding.btnPaid.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Tickets2RowModel())
      }
    }
  }
}
