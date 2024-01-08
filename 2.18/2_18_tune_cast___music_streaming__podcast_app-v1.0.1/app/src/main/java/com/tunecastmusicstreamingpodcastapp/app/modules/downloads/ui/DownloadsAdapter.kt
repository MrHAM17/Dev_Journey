package com.tunecastmusicstreamingpodcastapp.app.modules.downloads.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowDownloadsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.downloads.`data`.model.DownloadsRowModel
import kotlin.Int
import kotlin.collections.List

class DownloadsAdapter(
  var list: List<DownloadsRowModel>
) : RecyclerView.Adapter<DownloadsAdapter.RowDownloadsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDownloadsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_downloads,parent,false)
    return RowDownloadsVH(view)
  }

  override fun onBindViewHolder(holder: RowDownloadsVH, position: Int) {
    val downloadsRowModel = DownloadsRowModel()
    // TODO uncomment following line after integration with data source
    // val downloadsRowModel = list[position]
    holder.binding.downloadsRowModel = downloadsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<DownloadsRowModel>) {
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
      item: DownloadsRowModel
    ) {
    }
  }

  inner class RowDownloadsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDownloadsBinding = RowDownloadsBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, DownloadsRowModel())
      }
    }
  }
}
