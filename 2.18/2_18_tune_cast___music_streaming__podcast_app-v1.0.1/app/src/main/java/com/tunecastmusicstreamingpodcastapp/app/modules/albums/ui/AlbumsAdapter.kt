package com.tunecastmusicstreamingpodcastapp.app.modules.albums.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowAlbumsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.model.AlbumsRowModel
import kotlin.Int
import kotlin.collections.List

class AlbumsAdapter(
  var list: List<AlbumsRowModel>
) : RecyclerView.Adapter<AlbumsAdapter.RowAlbumsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAlbumsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_albums,parent,false)
    return RowAlbumsVH(view)
  }

  override fun onBindViewHolder(holder: RowAlbumsVH, position: Int) {
    val albumsRowModel = AlbumsRowModel()
    // TODO uncomment following line after integration with data source
    // val albumsRowModel = list[position]
    holder.binding.albumsRowModel = albumsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AlbumsRowModel>) {
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
      item: AlbumsRowModel
    ) {
    }
  }

  inner class RowAlbumsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAlbumsBinding = RowAlbumsBinding.bind(itemView)
  }
}
