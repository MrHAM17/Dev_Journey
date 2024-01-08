package com.housitbuyrentsellproperty.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout10Binding
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout10RowModel
import kotlin.Int
import kotlin.collections.List

class Layout1Adapter(
  var list: List<Layout10RowModel>
) : RecyclerView.Adapter<Layout1Adapter.RowLayout10VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout10VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout10,parent,false)
    return RowLayout10VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout10VH, position: Int) {
    val layout10RowModel = Layout10RowModel()
    // TODO uncomment following line after integration with data source
    // val layout10RowModel = list[position]
    holder.binding.layout10RowModel = layout10RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout10RowModel>) {
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
      item: Layout10RowModel
    ) {
    }
  }

  inner class RowLayout10VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout10Binding = RowLayout10Binding.bind(itemView)
  }
}
