package com.comforthotelbookingapp.app.modules.bookingcompleted.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowTicketsBinding
import com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.model.TicketsRowModel
import kotlin.Int
import kotlin.collections.List

class TicketsAdapter(
  var list: List<TicketsRowModel>
) : RecyclerView.Adapter<TicketsAdapter.RowTicketsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTicketsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_tickets,parent,false)
    return RowTicketsVH(view)
  }

  override fun onBindViewHolder(holder: RowTicketsVH, position: Int) {
    val ticketsRowModel = TicketsRowModel()
    // TODO uncomment following line after integration with data source
    // val ticketsRowModel = list[position]
    holder.binding.ticketsRowModel = ticketsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TicketsRowModel>) {
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
      item: TicketsRowModel
    ) {
    }
  }

  inner class RowTicketsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTicketsBinding = RowTicketsBinding.bind(itemView)
    init {
      binding.btnCompleted.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, TicketsRowModel())
      }
    }
  }
}
