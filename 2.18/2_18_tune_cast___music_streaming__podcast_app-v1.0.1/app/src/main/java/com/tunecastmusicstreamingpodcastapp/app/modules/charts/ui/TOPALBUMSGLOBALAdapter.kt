package com.tunecastmusicstreamingpodcastapp.app.modules.charts.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowTopalbumsglobalBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.TopalbumsglobalRowModel
import kotlin.Int
import kotlin.collections.List

class TOPALBUMSGLOBALAdapter(
  var list: List<TopalbumsglobalRowModel>
) : RecyclerView.Adapter<TOPALBUMSGLOBALAdapter.RowTopalbumsglobalVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTopalbumsglobalVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_topalbumsglobal,parent,false)
    return RowTopalbumsglobalVH(view)
  }

  override fun onBindViewHolder(holder: RowTopalbumsglobalVH, position: Int) {
    val topalbumsglobalRowModel = TopalbumsglobalRowModel()
    // TODO uncomment following line after integration with data source
    // val topalbumsglobalRowModel = list[position]
    holder.binding.topalbumsglobalRowModel = topalbumsglobalRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TopalbumsglobalRowModel>) {
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
      item: TopalbumsglobalRowModel
    ) {
    }
  }

  inner class RowTopalbumsglobalVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTopalbumsglobalBinding = RowTopalbumsglobalBinding.bind(itemView)
    init {
      binding.linearCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, TopalbumsglobalRowModel())
      }
    }
  }
}
