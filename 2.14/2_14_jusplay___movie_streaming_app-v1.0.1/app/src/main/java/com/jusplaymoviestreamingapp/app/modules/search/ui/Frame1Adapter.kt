package com.jusplaymoviestreamingapp.app.modules.search.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowFrame3Binding
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.Frame3RowModel
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

  override fun getItemCount(): Int = 4
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
  }
}
