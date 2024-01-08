package com.housitbuyrentsellproperty.app.modules.vertical.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowVerticalBinding
import com.housitbuyrentsellproperty.app.modules.vertical.`data`.model.VerticalRowModel
import kotlin.Int
import kotlin.collections.List

class VerticalAdapter(
  var list: List<VerticalRowModel>
) : RecyclerView.Adapter<VerticalAdapter.RowVerticalVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowVerticalVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_vertical,parent,false)
    return RowVerticalVH(view)
  }

  override fun onBindViewHolder(holder: RowVerticalVH, position: Int) {
    val verticalRowModel = VerticalRowModel()
    // TODO uncomment following line after integration with data source
    // val verticalRowModel = list[position]
    holder.binding.verticalRowModel = verticalRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<VerticalRowModel>) {
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
      item: VerticalRowModel
    ) {
    }
  }

  inner class RowVerticalVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowVerticalBinding = RowVerticalBinding.bind(itemView)
  }
}
