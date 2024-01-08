package com.banksydigitalbanking.app.modules.mobileprepaidone.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowThirtysevenBinding
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.ThirtysevenRowModel
import kotlin.Int
import kotlin.collections.List

class ThirtySevenAdapter(
  var list: List<ThirtysevenRowModel>
) : RecyclerView.Adapter<ThirtySevenAdapter.RowThirtysevenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowThirtysevenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_thirtyseven,parent,false)
    return RowThirtysevenVH(view)
  }

  override fun onBindViewHolder(holder: RowThirtysevenVH, position: Int) {
    val thirtysevenRowModel = ThirtysevenRowModel()
    // TODO uncomment following line after integration with data source
    // val thirtysevenRowModel = list[position]
    holder.binding.thirtysevenRowModel = thirtysevenRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ThirtysevenRowModel>) {
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
      item: ThirtysevenRowModel
    ) {
    }
  }

  inner class RowThirtysevenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowThirtysevenBinding = RowThirtysevenBinding.bind(itemView)
  }
}
