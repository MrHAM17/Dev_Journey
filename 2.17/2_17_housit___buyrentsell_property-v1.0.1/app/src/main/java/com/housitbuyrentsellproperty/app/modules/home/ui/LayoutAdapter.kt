package com.housitbuyrentsellproperty.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout9Binding
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout9RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout9RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout9VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout9VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout9,parent,false)
    return RowLayout9VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout9VH, position: Int) {
    val layout9RowModel = Layout9RowModel()
    // TODO uncomment following line after integration with data source
    // val layout9RowModel = list[position]
    holder.binding.layout9RowModel = layout9RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout9RowModel>) {
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
      item: Layout9RowModel
    ) {
    }
  }

  inner class RowLayout9VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout9Binding = RowLayout9Binding.bind(itemView)
    init {
      binding.btnApartment.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Layout9RowModel())
      }
    }
  }
}
