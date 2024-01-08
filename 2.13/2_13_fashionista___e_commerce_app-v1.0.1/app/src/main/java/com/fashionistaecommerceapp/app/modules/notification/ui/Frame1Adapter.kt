package com.fashionistaecommerceapp.app.modules.notification.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.databinding.RowFrame5Binding
import com.fashionistaecommerceapp.app.modules.notification.`data`.model.Frame5RowModel
import kotlin.Int
import kotlin.collections.List

class Frame1Adapter(
  var list: List<Frame5RowModel>
) : RecyclerView.Adapter<Frame1Adapter.RowFrame5VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFrame5VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_frame5,parent,false)
    return RowFrame5VH(view)
  }

  override fun onBindViewHolder(holder: RowFrame5VH, position: Int) {
    val frame5RowModel = Frame5RowModel()
    // TODO uncomment following line after integration with data source
    // val frame5RowModel = list[position]
    holder.binding.frame5RowModel = frame5RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Frame5RowModel>) {
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
      item: Frame5RowModel
    ) {
    }
  }

  inner class RowFrame5VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFrame5Binding = RowFrame5Binding.bind(itemView)
  }
}
