package com.tunecastmusicstreamingpodcastapp.app.modules.queue.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowQueueBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.queue.`data`.model.QueueRowModel
import kotlin.Int
import kotlin.collections.List

class QueueAdapter(
  var list: List<QueueRowModel>
) : RecyclerView.Adapter<QueueAdapter.RowQueueVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowQueueVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_queue,parent,false)
    return RowQueueVH(view)
  }

  override fun onBindViewHolder(holder: RowQueueVH, position: Int) {
    val queueRowModel = QueueRowModel()
    // TODO uncomment following line after integration with data source
    // val queueRowModel = list[position]
    holder.binding.queueRowModel = queueRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<QueueRowModel>) {
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
      item: QueueRowModel
    ) {
    }
  }

  inner class RowQueueVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowQueueBinding = RowQueueBinding.bind(itemView)
  }
}
