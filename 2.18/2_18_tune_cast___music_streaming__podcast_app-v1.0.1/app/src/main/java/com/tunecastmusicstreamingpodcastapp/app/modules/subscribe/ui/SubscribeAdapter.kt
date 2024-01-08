package com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSubscribeBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.model.SubscribeRowModel
import kotlin.Int
import kotlin.collections.List

class SubscribeAdapter(
  var list: List<SubscribeRowModel>
) : RecyclerView.Adapter<SubscribeAdapter.RowSubscribeVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSubscribeVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_subscribe,parent,false)
    return RowSubscribeVH(view)
  }

  override fun onBindViewHolder(holder: RowSubscribeVH, position: Int) {
    val subscribeRowModel = SubscribeRowModel()
    // TODO uncomment following line after integration with data source
    // val subscribeRowModel = list[position]
    holder.binding.subscribeRowModel = subscribeRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SubscribeRowModel>) {
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
      item: SubscribeRowModel
    ) {
    }
  }

  inner class RowSubscribeVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSubscribeBinding = RowSubscribeBinding.bind(itemView)
    init {
      binding.linearAutoLayoutVertical.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SubscribeRowModel())
      }
    }
  }
}
