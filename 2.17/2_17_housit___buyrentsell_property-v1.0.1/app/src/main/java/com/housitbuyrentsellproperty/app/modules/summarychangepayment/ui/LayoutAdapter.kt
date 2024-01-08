package com.housitbuyrentsellproperty.app.modules.summarychangepayment.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout2Binding
import com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.model.Layout2RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout2RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout2,parent,false)
    return RowLayout2VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout2VH, position: Int) {
    val layout2RowModel = Layout2RowModel()
    // TODO uncomment following line after integration with data source
    // val layout2RowModel = list[position]
    holder.binding.layout2RowModel = layout2RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout2RowModel>) {
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
      item: Layout2RowModel
    ) {
    }
  }

  inner class RowLayout2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout2Binding = RowLayout2Binding.bind(itemView)
  }
}
