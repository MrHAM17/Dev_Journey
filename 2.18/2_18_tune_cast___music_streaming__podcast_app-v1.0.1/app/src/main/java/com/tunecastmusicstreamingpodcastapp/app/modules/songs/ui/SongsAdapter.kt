package com.tunecastmusicstreamingpodcastapp.app.modules.songs.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSongsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songs.`data`.model.SongsRowModel
import kotlin.Int
import kotlin.collections.List

class SongsAdapter(
  var list: List<SongsRowModel>
) : RecyclerView.Adapter<SongsAdapter.RowSongsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSongsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_songs,parent,false)
    return RowSongsVH(view)
  }

  override fun onBindViewHolder(holder: RowSongsVH, position: Int) {
    val songsRowModel = SongsRowModel()
    // TODO uncomment following line after integration with data source
    // val songsRowModel = list[position]
    holder.binding.songsRowModel = songsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SongsRowModel>) {
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
      item: SongsRowModel
    ) {
    }
  }

  inner class RowSongsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSongsBinding = RowSongsBinding.bind(itemView)
  }
}
