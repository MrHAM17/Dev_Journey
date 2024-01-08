package com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSongplayoverscreenBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.model.SongplayoverscreenRowModel
import kotlin.Int
import kotlin.collections.List

class SongPlayOverScreenAdapter(
  var list: List<SongplayoverscreenRowModel>
) : RecyclerView.Adapter<SongPlayOverScreenAdapter.RowSongplayoverscreenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSongplayoverscreenVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_songplayoverscreen,parent,false)
    return RowSongplayoverscreenVH(view)
  }

  override fun onBindViewHolder(holder: RowSongplayoverscreenVH, position: Int) {
    val songplayoverscreenRowModel = SongplayoverscreenRowModel()
    // TODO uncomment following line after integration with data source
    // val songplayoverscreenRowModel = list[position]
    holder.binding.songplayoverscreenRowModel = songplayoverscreenRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SongplayoverscreenRowModel>) {
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
      item: SongplayoverscreenRowModel
    ) {
    }
  }

  inner class RowSongplayoverscreenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSongplayoverscreenBinding = RowSongplayoverscreenBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SongplayoverscreenRowModel())
      }
    }
  }
}
