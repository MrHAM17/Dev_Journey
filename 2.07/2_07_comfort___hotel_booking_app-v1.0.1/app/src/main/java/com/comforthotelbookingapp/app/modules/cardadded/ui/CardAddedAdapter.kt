package com.comforthotelbookingapp.app.modules.cardadded.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowCardaddedBinding
import com.comforthotelbookingapp.app.modules.cardadded.`data`.model.CardaddedRowModel
import kotlin.Int
import kotlin.collections.List

class CardAddedAdapter(
  var list: List<CardaddedRowModel>
) : RecyclerView.Adapter<CardAddedAdapter.RowCardaddedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCardaddedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_cardadded,parent,false)
    return RowCardaddedVH(view)
  }

  override fun onBindViewHolder(holder: RowCardaddedVH, position: Int) {
    val cardaddedRowModel = CardaddedRowModel()
    // TODO uncomment following line after integration with data source
    // val cardaddedRowModel = list[position]
    holder.binding.cardaddedRowModel = cardaddedRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CardaddedRowModel>) {
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
      item: CardaddedRowModel
    ) {
    }
  }

  inner class RowCardaddedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCardaddedBinding = RowCardaddedBinding.bind(itemView)
  }
}
