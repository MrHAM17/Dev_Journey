package com.fashionistaecommerceapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.databinding.RowFrame3Binding
import com.fashionistaecommerceapp.app.modules.home.`data`.model.Frame3RowModel
import kotlin.Int
import kotlin.collections.List

class Frame1Adapter(
  var list: List<Frame3RowModel>
) : RecyclerView.Adapter<Frame1Adapter.RowFrame3VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFrame3VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_frame3,parent,false)
    return RowFrame3VH(view)
  }

  override fun onBindViewHolder(holder: RowFrame3VH, position: Int) {
    val frame3RowModel = Frame3RowModel()
    // TODO uncomment following line after integration with data source
    // val frame3RowModel = list[position]
    holder.binding.frame3RowModel = frame3RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Frame3RowModel>) {
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
      item: Frame3RowModel
    ) {
    }
  }

  inner class RowFrame3VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFrame3Binding = RowFrame3Binding.bind(itemView)
    init {
      binding.linearCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Frame3RowModel())
      }
    }
  }
}
