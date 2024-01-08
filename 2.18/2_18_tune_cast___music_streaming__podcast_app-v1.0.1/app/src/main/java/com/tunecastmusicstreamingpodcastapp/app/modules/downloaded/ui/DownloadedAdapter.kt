package com.tunecastmusicstreamingpodcastapp.app.modules.downloaded.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowDownloadedBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.downloaded.`data`.model.DownloadedRowModel
import kotlin.Int
import kotlin.collections.List

class DownloadedAdapter(
  var list: List<DownloadedRowModel>
) : RecyclerView.Adapter<DownloadedAdapter.RowDownloadedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDownloadedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_downloaded,parent,false)
    return RowDownloadedVH(view)
  }

  override fun onBindViewHolder(holder: RowDownloadedVH, position: Int) {
    val downloadedRowModel = DownloadedRowModel()
    // TODO uncomment following line after integration with data source
    // val downloadedRowModel = list[position]
    holder.binding.downloadedRowModel = downloadedRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<DownloadedRowModel>) {
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
      item: DownloadedRowModel
    ) {
    }
  }

  inner class RowDownloadedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDownloadedBinding = RowDownloadedBinding.bind(itemView)
  }
}
