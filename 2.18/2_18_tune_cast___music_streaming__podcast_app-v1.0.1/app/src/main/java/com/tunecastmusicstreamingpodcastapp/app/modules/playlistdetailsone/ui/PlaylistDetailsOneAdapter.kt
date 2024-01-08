package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPlaylistdetailsoneBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.model.PlaylistdetailsoneRowModel
import kotlin.Int
import kotlin.collections.List

class PlaylistDetailsOneAdapter(
  var list: List<PlaylistdetailsoneRowModel>
) : RecyclerView.Adapter<PlaylistDetailsOneAdapter.RowPlaylistdetailsoneVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPlaylistdetailsoneVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_playlistdetailsone,parent,false)
    return RowPlaylistdetailsoneVH(view)
  }

  override fun onBindViewHolder(holder: RowPlaylistdetailsoneVH, position: Int) {
    val playlistdetailsoneRowModel = PlaylistdetailsoneRowModel()
    // TODO uncomment following line after integration with data source
    // val playlistdetailsoneRowModel = list[position]
    holder.binding.playlistdetailsoneRowModel = playlistdetailsoneRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PlaylistdetailsoneRowModel>) {
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
      item: PlaylistdetailsoneRowModel
    ) {
    }
  }

  inner class RowPlaylistdetailsoneVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPlaylistdetailsoneBinding = RowPlaylistdetailsoneBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, PlaylistdetailsoneRowModel())
      }
    }
  }
}
