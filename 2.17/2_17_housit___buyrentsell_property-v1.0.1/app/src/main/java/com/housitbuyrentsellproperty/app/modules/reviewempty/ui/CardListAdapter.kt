package com.housitbuyrentsellproperty.app.modules.reviewempty.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowCardlistBinding
import com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.model.CardlistRowModel
import kotlin.Int
import kotlin.collections.List

class CardListAdapter(
  var list: List<CardlistRowModel>
) : RecyclerView.Adapter<CardListAdapter.RowCardlistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCardlistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_cardlist,parent,false)
    return RowCardlistVH(view)
  }

  override fun onBindViewHolder(holder: RowCardlistVH, position: Int) {
    val cardlistRowModel = CardlistRowModel()
    // TODO uncomment following line after integration with data source
    // val cardlistRowModel = list[position]
    holder.binding.cardlistRowModel = cardlistRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CardlistRowModel>) {
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
      item: CardlistRowModel
    ) {
    }
  }

  inner class RowCardlistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCardlistBinding = RowCardlistBinding.bind(itemView)
  }
}
