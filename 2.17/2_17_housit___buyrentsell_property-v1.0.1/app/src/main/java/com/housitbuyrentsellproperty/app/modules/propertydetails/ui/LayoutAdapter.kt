package com.housitbuyrentsellproperty.app.modules.propertydetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout6Binding
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.Layout6RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout6RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout6VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout6VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout6,parent,false)
    return RowLayout6VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout6VH, position: Int) {
    val layout6RowModel = Layout6RowModel()
    // TODO uncomment following line after integration with data source
    // val layout6RowModel = list[position]
    holder.binding.layout6RowModel = layout6RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout6RowModel>) {
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
      item: Layout6RowModel
    ) {
    }
  }

  inner class RowLayout6VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout6Binding = RowLayout6Binding.bind(itemView)
  }
}
