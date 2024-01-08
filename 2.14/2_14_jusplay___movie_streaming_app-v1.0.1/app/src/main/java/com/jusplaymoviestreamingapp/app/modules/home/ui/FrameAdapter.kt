package com.jusplaymoviestreamingapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowFrame4Binding
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.Frame4RowModel
import kotlin.Int
import kotlin.collections.List

class FrameAdapter(
  var list: List<Frame4RowModel>
) : RecyclerView.Adapter<FrameAdapter.RowFrame4VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFrame4VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_frame4,parent,false)
    return RowFrame4VH(view)
  }

  override fun onBindViewHolder(holder: RowFrame4VH, position: Int) {
    val frame4RowModel = Frame4RowModel()
    // TODO uncomment following line after integration with data source
    // val frame4RowModel = list[position]
    holder.binding.frame4RowModel = frame4RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Frame4RowModel>) {
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
      item: Frame4RowModel
    ) {
    }
  }

  inner class RowFrame4VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFrame4Binding = RowFrame4Binding.bind(itemView)
  }
}
