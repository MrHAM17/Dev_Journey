package com.tunecastmusicstreamingpodcastapp.app.modules.playback.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPlaybackBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.model.PlaybackRowModel
import kotlin.Int
import kotlin.collections.List

class PlaybackAdapter(
  var list: List<PlaybackRowModel>
) : RecyclerView.Adapter<PlaybackAdapter.RowPlaybackVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPlaybackVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_playback,parent,false)
    return RowPlaybackVH(view)
  }

  override fun onBindViewHolder(holder: RowPlaybackVH, position: Int) {
    val playbackRowModel = PlaybackRowModel()
    // TODO uncomment following line after integration with data source
    // val playbackRowModel = list[position]
    holder.binding.playbackRowModel = playbackRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PlaybackRowModel>) {
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
      item: PlaybackRowModel
    ) {
    }
  }

  inner class RowPlaybackVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPlaybackBinding = RowPlaybackBinding.bind(itemView)
  }
}
