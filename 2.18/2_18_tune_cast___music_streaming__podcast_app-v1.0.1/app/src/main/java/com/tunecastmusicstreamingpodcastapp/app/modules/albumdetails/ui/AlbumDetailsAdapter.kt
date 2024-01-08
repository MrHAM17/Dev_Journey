package com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowAlbumdetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.albumdetails.`data`.model.AlbumdetailsRowModel
import kotlin.Int
import kotlin.collections.List

class AlbumDetailsAdapter(
  var list: List<AlbumdetailsRowModel>
) : RecyclerView.Adapter<AlbumDetailsAdapter.RowAlbumdetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAlbumdetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_albumdetails,parent,false)
    return RowAlbumdetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowAlbumdetailsVH, position: Int) {
    val albumdetailsRowModel = AlbumdetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val albumdetailsRowModel = list[position]
    holder.binding.albumdetailsRowModel = albumdetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AlbumdetailsRowModel>) {
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
      item: AlbumdetailsRowModel
    ) {
    }
  }

  inner class RowAlbumdetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAlbumdetailsBinding = RowAlbumdetailsBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, AlbumdetailsRowModel())
      }
    }
  }
}
