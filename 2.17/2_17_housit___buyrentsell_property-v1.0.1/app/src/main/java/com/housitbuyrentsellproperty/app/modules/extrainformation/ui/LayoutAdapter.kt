package com.housitbuyrentsellproperty.app.modules.extrainformation.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout3Binding
import com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.model.Layout3RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout3RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout3VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout3VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout3,parent,false)
    return RowLayout3VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout3VH, position: Int) {
    val layout3RowModel = Layout3RowModel()
    // TODO uncomment following line after integration with data source
    // val layout3RowModel = list[position]
    holder.binding.layout3RowModel = layout3RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout3RowModel>) {
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
      item: Layout3RowModel
    ) {
    }
  }

  inner class RowLayout3VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout3Binding = RowLayout3Binding.bind(itemView)
  }
}
