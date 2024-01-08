package com.housitbuyrentsellproperty.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout11Binding
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout11RowModel
import kotlin.Int
import kotlin.collections.List

class Layout2Adapter(
  var list: List<Layout11RowModel>
) : RecyclerView.Adapter<Layout2Adapter.RowLayout11VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout11VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout11,parent,false)
    return RowLayout11VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout11VH, position: Int) {
    val layout11RowModel = Layout11RowModel()
    // TODO uncomment following line after integration with data source
    // val layout11RowModel = list[position]
    holder.binding.layout11RowModel = layout11RowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout11RowModel>) {
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
      item: Layout11RowModel
    ) {
    }
  }

  inner class RowLayout11VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout11Binding = RowLayout11Binding.bind(itemView)
  }
}
