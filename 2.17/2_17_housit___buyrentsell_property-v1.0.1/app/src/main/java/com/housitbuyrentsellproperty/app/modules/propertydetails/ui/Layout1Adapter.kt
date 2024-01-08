package com.housitbuyrentsellproperty.app.modules.propertydetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout7Binding
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.Layout7RowModel
import kotlin.Int
import kotlin.collections.List

class Layout1Adapter(
  var list: List<Layout7RowModel>
) : RecyclerView.Adapter<Layout1Adapter.RowLayout7VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout7VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout7,parent,false)
    return RowLayout7VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout7VH, position: Int) {
    val layout7RowModel = Layout7RowModel()
    // TODO uncomment following line after integration with data source
    // val layout7RowModel = list[position]
    holder.binding.layout7RowModel = layout7RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout7RowModel>) {
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
      item: Layout7RowModel
    ) {
    }
  }

  inner class RowLayout7VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout7Binding = RowLayout7Binding.bind(itemView)
  }
}
