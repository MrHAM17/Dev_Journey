package com.housitbuyrentsellproperty.app.modules.reviewfill.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout1Binding
import com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.model.Layout1RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout1RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout1,parent,false)
    return RowLayout1VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout1VH, position: Int) {
    val layout1RowModel = Layout1RowModel()
    // TODO uncomment following line after integration with data source
    // val layout1RowModel = list[position]
    holder.binding.layout1RowModel = layout1RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout1RowModel>) {
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
      item: Layout1RowModel
    ) {
    }
  }

  inner class RowLayout1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout1Binding = RowLayout1Binding.bind(itemView)
  }
}
