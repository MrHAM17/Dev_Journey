package com.tunecastmusicstreamingpodcastapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowTopchartsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.TopchartsRowModel
import kotlin.Int
import kotlin.collections.List

class TopChartsAdapter(
  var list: List<TopchartsRowModel>
) : RecyclerView.Adapter<TopChartsAdapter.RowTopchartsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTopchartsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_topcharts,parent,false)
    return RowTopchartsVH(view)
  }

  override fun onBindViewHolder(holder: RowTopchartsVH, position: Int) {
    val topchartsRowModel = TopchartsRowModel()
    // TODO uncomment following line after integration with data source
    // val topchartsRowModel = list[position]
    holder.binding.topchartsRowModel = topchartsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TopchartsRowModel>) {
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
      item: TopchartsRowModel
    ) {
    }
  }

  inner class RowTopchartsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTopchartsBinding = RowTopchartsBinding.bind(itemView)
  }
}
