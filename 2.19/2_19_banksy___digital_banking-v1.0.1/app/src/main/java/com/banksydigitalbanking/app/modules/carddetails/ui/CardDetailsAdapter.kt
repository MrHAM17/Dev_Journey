package com.banksydigitalbanking.app.modules.carddetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowCarddetailsBinding
import com.banksydigitalbanking.app.modules.carddetails.`data`.model.CarddetailsRowModel
import kotlin.Int
import kotlin.collections.List

class CardDetailsAdapter(
  var list: List<CarddetailsRowModel>
) : RecyclerView.Adapter<CardDetailsAdapter.RowCarddetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCarddetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_carddetails,parent,false)
    return RowCarddetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowCarddetailsVH, position: Int) {
    val carddetailsRowModel = CarddetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val carddetailsRowModel = list[position]
    holder.binding.carddetailsRowModel = carddetailsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CarddetailsRowModel>) {
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
      item: CarddetailsRowModel
    ) {
    }
  }

  inner class RowCarddetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCarddetailsBinding = RowCarddetailsBinding.bind(itemView)
  }
}
