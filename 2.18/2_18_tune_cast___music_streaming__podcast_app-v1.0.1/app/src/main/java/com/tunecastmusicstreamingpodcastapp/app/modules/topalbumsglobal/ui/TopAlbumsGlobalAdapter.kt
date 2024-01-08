package com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowTopalbumsglobal2Binding
import com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.model.Topalbumsglobal2RowModel
import kotlin.Int
import kotlin.collections.List

class TopAlbumsGlobalAdapter(
  var list: List<Topalbumsglobal2RowModel>
) : RecyclerView.Adapter<TopAlbumsGlobalAdapter.RowTopalbumsglobal2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTopalbumsglobal2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_topalbumsglobal2,parent,false)
    return RowTopalbumsglobal2VH(view)
  }

  override fun onBindViewHolder(holder: RowTopalbumsglobal2VH, position: Int) {
    val topalbumsglobal2RowModel = Topalbumsglobal2RowModel()
    // TODO uncomment following line after integration with data source
    // val topalbumsglobal2RowModel = list[position]
    holder.binding.topalbumsglobal2RowModel = topalbumsglobal2RowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Topalbumsglobal2RowModel>) {
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
      item: Topalbumsglobal2RowModel
    ) {
    }
  }

  inner class RowTopalbumsglobal2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTopalbumsglobal2Binding = RowTopalbumsglobal2Binding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Topalbumsglobal2RowModel())
      }
    }
  }
}
