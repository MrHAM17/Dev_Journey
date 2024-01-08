package com.tunecastmusicstreamingpodcastapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFrameBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.FrameRowModel
import kotlin.Int
import kotlin.collections.List

class FrameAdapter(
  var list: List<FrameRowModel>
) : RecyclerView.Adapter<FrameAdapter.RowFrameVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFrameVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_frame,parent,false)
    return RowFrameVH(view)
  }

  override fun onBindViewHolder(holder: RowFrameVH, position: Int) {
    val frameRowModel = FrameRowModel()
    // TODO uncomment following line after integration with data source
    // val frameRowModel = list[position]
    holder.binding.frameRowModel = frameRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FrameRowModel>) {
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
      item: FrameRowModel
    ) {
    }
  }

  inner class RowFrameVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFrameBinding = RowFrameBinding.bind(itemView)
  }
}
