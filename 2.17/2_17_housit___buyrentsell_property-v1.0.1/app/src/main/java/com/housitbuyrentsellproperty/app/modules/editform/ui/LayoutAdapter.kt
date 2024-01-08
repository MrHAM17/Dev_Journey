package com.housitbuyrentsellproperty.app.modules.editform.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout5Binding
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.Layout5RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout5RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout5VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout5VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout5,parent,false)
    return RowLayout5VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout5VH, position: Int) {
    val layout5RowModel = Layout5RowModel()
    // TODO uncomment following line after integration with data source
    // val layout5RowModel = list[position]
    holder.binding.layout5RowModel = layout5RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout5RowModel>) {
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
      item: Layout5RowModel
    ) {
    }
  }

  inner class RowLayout5VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout5Binding = RowLayout5Binding.bind(itemView)
  }
}
