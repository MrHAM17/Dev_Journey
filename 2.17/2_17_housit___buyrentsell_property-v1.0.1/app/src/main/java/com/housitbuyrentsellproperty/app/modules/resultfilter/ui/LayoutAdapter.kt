package com.housitbuyrentsellproperty.app.modules.resultfilter.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout4Binding
import com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.model.Layout4RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout4RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout4VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout4VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout4,parent,false)
    return RowLayout4VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout4VH, position: Int) {
    val layout4RowModel = Layout4RowModel()
    // TODO uncomment following line after integration with data source
    // val layout4RowModel = list[position]
    holder.binding.layout4RowModel = layout4RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout4RowModel>) {
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
      item: Layout4RowModel
    ) {
    }
  }

  inner class RowLayout4VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout4Binding = RowLayout4Binding.bind(itemView)
    init {
      binding.btnHouse.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Layout4RowModel())
      }
    }
  }
}
