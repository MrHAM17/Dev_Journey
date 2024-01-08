package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPlaylistdetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.model.PlaylistdetailsRowModel
import kotlin.Int
import kotlin.collections.List

class PlaylistDetailsAdapter(
  var list: List<PlaylistdetailsRowModel>
) : RecyclerView.Adapter<PlaylistDetailsAdapter.RowPlaylistdetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPlaylistdetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_playlistdetails,parent,false)
    return RowPlaylistdetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowPlaylistdetailsVH, position: Int) {
    val playlistdetailsRowModel = PlaylistdetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val playlistdetailsRowModel = list[position]
    holder.binding.playlistdetailsRowModel = playlistdetailsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PlaylistdetailsRowModel>) {
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
      item: PlaylistdetailsRowModel
    ) {
    }
  }

  inner class RowPlaylistdetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPlaylistdetailsBinding = RowPlaylistdetailsBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, PlaylistdetailsRowModel())
      }
    }
  }
}
