package com.jusplaymoviestreamingapp.app.modules.search.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowFrame2Binding
import com.jusplaymoviestreamingapp.app.modules.search.`data`.model.Frame2RowModel
import kotlin.Int
import kotlin.collections.List

class FrameAdapter(
  var list: List<Frame2RowModel>
) : RecyclerView.Adapter<FrameAdapter.RowFrame2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFrame2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_frame2,parent,false)
    return RowFrame2VH(view)
  }

  override fun onBindViewHolder(holder: RowFrame2VH, position: Int) {
    val frame2RowModel = Frame2RowModel()
    // TODO uncomment following line after integration with data source
    // val frame2RowModel = list[position]
    holder.binding.frame2RowModel = frame2RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Frame2RowModel>) {
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
      item: Frame2RowModel
    ) {
    }
  }

  inner class RowFrame2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFrame2Binding = RowFrame2Binding.bind(itemView)
  }
}
