package com.musicplayer.app.modules.playlist.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowPlaylistBinding
import com.musicplayer.app.modules.playlist.`data`.model.PlaylistRowModel
import kotlin.Int
import kotlin.collections.List

class PlaylistAdapter(
  var list: List<PlaylistRowModel>
) : RecyclerView.Adapter<PlaylistAdapter.RowPlaylistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPlaylistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_playlist,parent,false)
    return RowPlaylistVH(view)
  }

  override fun onBindViewHolder(holder: RowPlaylistVH, position: Int) {
    val playlistRowModel = PlaylistRowModel()
    // TODO uncomment following line after integration with data source
    // val playlistRowModel = list[position]
    holder.binding.playlistRowModel = playlistRowModel
  }

  override fun getItemCount(): Int = 8
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PlaylistRowModel>) {
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
      item: PlaylistRowModel
    ) {
    }
  }

  inner class RowPlaylistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPlaylistBinding = RowPlaylistBinding.bind(itemView)
  }
}
