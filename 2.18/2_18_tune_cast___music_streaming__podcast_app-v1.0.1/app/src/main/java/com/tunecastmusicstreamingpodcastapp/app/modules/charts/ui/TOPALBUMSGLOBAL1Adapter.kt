package com.tunecastmusicstreamingpodcastapp.app.modules.charts.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowTopalbumsglobal1Binding
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.Topalbumsglobal1RowModel
import kotlin.Int
import kotlin.collections.List

class TOPALBUMSGLOBAL1Adapter(
  var list: List<Topalbumsglobal1RowModel>
) : RecyclerView.Adapter<TOPALBUMSGLOBAL1Adapter.RowTopalbumsglobal1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTopalbumsglobal1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_topalbumsglobal1,parent,false)
    return RowTopalbumsglobal1VH(view)
  }

  override fun onBindViewHolder(holder: RowTopalbumsglobal1VH, position: Int) {
    val topalbumsglobal1RowModel = Topalbumsglobal1RowModel()
    // TODO uncomment following line after integration with data source
    // val topalbumsglobal1RowModel = list[position]
    holder.binding.topalbumsglobal1RowModel = topalbumsglobal1RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Topalbumsglobal1RowModel>) {
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
      item: Topalbumsglobal1RowModel
    ) {
    }
  }

  inner class RowTopalbumsglobal1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTopalbumsglobal1Binding = RowTopalbumsglobal1Binding.bind(itemView)
  }
}
