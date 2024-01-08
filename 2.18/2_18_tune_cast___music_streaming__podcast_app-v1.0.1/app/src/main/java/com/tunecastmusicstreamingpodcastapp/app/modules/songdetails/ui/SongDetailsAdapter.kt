package com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSongdetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songdetails.`data`.model.SongdetailsRowModel
import kotlin.Int
import kotlin.collections.List

class SongDetailsAdapter(
  var list: List<SongdetailsRowModel>
) : RecyclerView.Adapter<SongDetailsAdapter.RowSongdetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSongdetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_songdetails,parent,false)
    return RowSongdetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowSongdetailsVH, position: Int) {
    val songdetailsRowModel = SongdetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val songdetailsRowModel = list[position]
    holder.binding.songdetailsRowModel = songdetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SongdetailsRowModel>) {
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
      item: SongdetailsRowModel
    ) {
    }
  }

  inner class RowSongdetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSongdetailsBinding = RowSongdetailsBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SongdetailsRowModel())
      }
    }
  }
}
