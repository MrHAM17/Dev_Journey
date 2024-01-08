package com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowHistorymusicBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.`data`.model.HistorymusicRowModel
import kotlin.Int
import kotlin.collections.List

class HistoryMusicAdapter(
  var list: List<HistorymusicRowModel>
) : RecyclerView.Adapter<HistoryMusicAdapter.RowHistorymusicVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowHistorymusicVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_historymusic,parent,false)
    return RowHistorymusicVH(view)
  }

  override fun onBindViewHolder(holder: RowHistorymusicVH, position: Int) {
    val historymusicRowModel = HistorymusicRowModel()
    // TODO uncomment following line after integration with data source
    // val historymusicRowModel = list[position]
    holder.binding.historymusicRowModel = historymusicRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<HistorymusicRowModel>) {
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
      item: HistorymusicRowModel
    ) {
    }
  }

  inner class RowHistorymusicVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowHistorymusicBinding = RowHistorymusicBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, HistorymusicRowModel())
      }
    }
  }
}
